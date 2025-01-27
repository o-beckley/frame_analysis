import matplotlib.pyplot as plt

from component import Component
from load import PointLoad, UniformlyDistributedLoad, VerticallyDistributedLoad, Couple
from support import Support, RollerSupport, HingeSupport, FixedSupport
from member import Member
import numpy as np
import math

# TODO: make the beam model unbreakable and add error checking
# TODO: assert that the first component starts at the origin.??

class Beam:
    def __init__(self, components: list[Component]):
        self.components = components

        # Positioning the members end to end
        len_previous_members = 0
        for c in self.components:
            c.position_y = 0
            c.position_x = len_previous_members
            if isinstance(c, Member):
                len_previous_members += c.length

        self.total_length = len_previous_members

        # set E and I to be constant throughout
        # the beam when E and I are not provided for every member
        members = list(filter(lambda m: isinstance(m, Member), self.components))
        all_have_elastic_modulus = all([m.elastic_modulus is not None for m in members])
        all_have_moment_of_inertia = all([m.moment_of_inertia is not None for m in members])
        if not all_have_elastic_modulus:
            for m in members:
                m.elastic_modulus = 1
        if not all_have_moment_of_inertia:
            for m in members:
                m.moment_of_inertia = 1

        # compute chord rotation of each member
        for i, c in enumerate(self.components):
            if isinstance(c, Member):
                left_settlement = None
                right_settlement = None
                if i > 0:
                    left_component = self.components[i - 1]
                    if isinstance(left_component, Support):
                        left_settlement = left_component.settlement
                if i + 1 < len(self.components):
                    right_component = self.components[i + 1]
                    if isinstance(right_component, Support):
                        right_settlement = right_component.settlement
                if left_settlement is not None and right_settlement is not None:
                    c.compute_chord_rotation(left_settlement, right_settlement)

        # TODO: make sure there are no abnormal beam configurations
        # TODO: fix cases where there are two Supports next to each other

    def n_unknown_reactions(self) -> int:
        n = 0
        for s in self.components:
            if isinstance(s, RollerSupport):
                n += 1
            elif isinstance(s, HingeSupport):
                n += 2
            elif isinstance(s, FixedSupport):
                n += 3
        return n

    def is_determinate(self) -> bool:
        return self.n_unknown_reactions() == 3

    def is_indeterminate(self) -> bool:
        return self.n_unknown_reactions() > 3

    def is_unstable(self) -> bool:
        return self.n_unknown_reactions() < 3

    def analyze_determinate_beam(self):
        """
        The idea is solving this system of equations:
        Ax = B
        by doing
        inv(A) @ A @ x = inv(A) @ B
        x = inv(A) @ B
        ...tada!
        :return: A 1-D vector containing all the unknowns in the order of which they appear
        """
        n_unknowns = self.n_unknown_reactions()
        mat_a = np.zeros(shape=(n_unknowns, n_unknowns))
        mat_b = np.zeros(shape=(n_unknowns,))

        # equilibrium equations in standard linear form:
        # a0x0 + a1x1 + a2x2 + ... = Bi
        # where all a's are coefficients of unknown reactions
        # Bi is a constant for the ith equation

        # The structure of the rows in mat_a:
        # [horizontal_reaction, vertical_reaction, moment_reaction, ... ]
        # Each row is a single equilibrium equation or equation of condition

        applied_vertical_load = 0
        applied_horizontal_load = 0
        applied_moment_about_p1 = 0

        for m in self.components:
            if isinstance(m , Member):
                for l in m.loadings:
                    if isinstance(l, PointLoad):
                        applied_vertical_load += l.y_value
                        applied_horizontal_load += l.x_value
                        applied_moment_about_p1 += (m.position_x + l.point_of_application) * l.y_value
                    elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                        eq = l.equivalent_point_load()
                        applied_vertical_load += eq.y_value
                        applied_horizontal_load += eq.x_value
                        applied_moment_about_p1 += (m.position_x + eq.point_of_application) * eq.y_value
                    elif isinstance(l, Couple):
                        applied_moment_about_p1 += l.value

        # horizontal reaction equation
        i = 0  # column index
        j = 0  # row index
        for s in self.components:
            if isinstance(s, RollerSupport):
                j += 1
            elif isinstance(s, HingeSupport):
                mat_a[i, j] = 1
                j += 2
            elif isinstance(s, FixedSupport):
                mat_a[i, j] = 1
                j += 3
        mat_b[i] = applied_horizontal_load

        # vertical reaction equation
        i += 1
        j = 0
        for s in self.components:
            if isinstance(s, RollerSupport):
                mat_a[i, j] = 1
                j += 1
            elif isinstance(s, HingeSupport):
                mat_a[i, j + 1] = 1
                j += 2
            elif isinstance(s, FixedSupport):
                mat_a[i, j + 1] = 1
                j += 3
        mat_b[i] = applied_vertical_load

        # moment reaction equation
        i += 1
        j = 0
        for s in self.components:
            if isinstance(s, RollerSupport):
                mat_a[i, j] = s.position_x
                j += 1
            elif isinstance(s, HingeSupport):
                mat_a[i, j + 1] = s.position_x
                j += 2
            elif isinstance(s, FixedSupport):
                mat_a[i, j + 1] = s.position_x
                mat_a[i, j + 2] = 1
                j += 3
        mat_b[i] = applied_moment_about_p1

        result = np.linalg.inv(mat_a) @ mat_b

        # store the reaction results in the supports
        j = 0
        for c in self.components:
            if isinstance(c, RollerSupport):
                c.v_reaction = result[j]
                j += 1
            elif isinstance(c, HingeSupport):
                c.h_reaction = result[j]
                c.v_reaction = result[j + 1]
                j += 2
            elif isinstance(c, FixedSupport):
                c.h_reaction = result[j]
                c.v_reaction = result[j + 1]
                c.m_reaction = result[j + 2]
                j += 3

        return result

    def analyze_indeterminate_beam(self):
        """
        This will be solved using slope deflection method.
        the idea is the same as with the determinate method:
        find all the equations using SDM and solve them simultaneously using
        x = inv(A) @ B
        :return: A 1-D vector containing all the unknowns in the order of which they appear
        """
        n_unknowns = 0
        for i, c in enumerate(self.components):
            if isinstance(c, Member):
                # every member has two unknowns (end moments)
                n_unknowns += 2
                if i == 0:
                    # The beam is a cantilever since the first component is a member
                    # slope and deflection are unknown at a free end
                    n_unknowns += 2
                elif isinstance(self.components[i - 1], Member):
                    # slope and deflection are unknown when two members are joined
                    n_unknowns += 2
                elif isinstance(self.components[i - 1], Support):
                    # only slope is unknown at a support. settlement will be known
                    n_unknowns += 1
                if i + 2 == len(self.components): # second to last component
                    if isinstance(self.components[i + 1], Support):
                        n_unknowns += 1
                elif i + 1 == len(self.components):
                    # The beam is a cantilever since the first component is a member
                    # slope and deflection are unknown at a free end
                    n_unknowns += 2

        mat_a = np.zeros(shape=(n_unknowns, n_unknowns))
        mat_b = np.zeros(shape=(n_unknowns,))
        # slope deflection equations in standard linear form:
        # a0x0 + a1x1 + a2x2 + ... = Bi
        # where all a's are coefficients of unknown end moments
        # and rotations. Bi is a constant for the ith equation

        # The structure of the rows in mat_a:
        # [slope, (deflection), left_end_moment, right_end_moment, slope, (deflection), ... ]
        # Each row is a single SDM equation or joint equilibrium equation

        i = 0 # column index
        j = 0 # row index

        # member end equations
        for k, m in enumerate(self.components):
            if isinstance(m, Member):
                left_deflection_is_unknown = not (k > 0 and isinstance(self.components[k - 1], Support))
                right_deflection_is_unknown = not (k + 1 < len(self.components) and isinstance(self.components[k + 1], Support))
                initial_column_index = j
                # left end equation
                mat_a[i, j] = -4 * m.elastic_modulus * m.moment_of_inertia / m.length
                if left_deflection_is_unknown:
                    mat_a[i, j + 1] = 6 * m.elastic_modulus * m.moment_of_inertia / (m.length ** 2)
                    j += 1
                mat_a[i, j + 1] = 1
                mat_a[i, j + 3] = -2 * m.elastic_modulus * m.moment_of_inertia / m.length
                if right_deflection_is_unknown:
                    mat_a[i, j + 4] = -6 * m.elastic_modulus * m.moment_of_inertia / (m.length ** 2)
                    j += 1
                if m.chord_rotation is None:
                    if left_deflection_is_unknown and right_deflection_is_unknown:
                        mat_b[i] = m.fem_left
                    elif left_deflection_is_unknown:
                        r_support = self.components[k + 1]
                        if isinstance(r_support, Support):
                            mat_b[i] = m.fem_left + 6 * m.elastic_modulus * m.moment_of_inertia * r_support.settlement / (m.length ** 2)
                    elif right_deflection_is_unknown:
                        l_support = self.components[k - 1]
                        if isinstance(l_support, Support):
                            mat_b[i] = m.fem_left - 6 * m.elastic_modulus * m.moment_of_inertia * l_support.settlement / (m.length ** 2)
                else:
                    mat_b[i] = m.fem_left -6 * m.elastic_modulus * m.moment_of_inertia * m.chord_rotation / m.length
                i += 1 # moves to the next equation

                #right end equation
                j = initial_column_index
                mat_a[i, j] = -2 * m.elastic_modulus * m.moment_of_inertia / m.length
                if left_deflection_is_unknown:
                    mat_a[i, j + 1] = 6 * m.elastic_modulus * m.moment_of_inertia / (m.length ** 2)
                    j += 1
                mat_a[i, j + 2] = 1
                mat_a[i, j + 3] = -4 * m.elastic_modulus * m.moment_of_inertia / m.length
                if right_deflection_is_unknown:
                    mat_a[i, j + 4] = - 6 * m.elastic_modulus * m.moment_of_inertia / (m.length ** 2)
                    j += 1
                if m.chord_rotation is None:
                    if left_deflection_is_unknown and right_deflection_is_unknown:
                        mat_b[i] = m.fem_right
                    elif left_deflection_is_unknown:
                        r_support = self.components[k + 1]
                        if isinstance(r_support, Support):
                            mat_b[i] = m.fem_right + 6 * m.elastic_modulus * m.moment_of_inertia * r_support.settlement / (m.length ** 2)
                    elif right_deflection_is_unknown:
                        l_support = self.components[k - 1]
                        if isinstance(l_support, Support):
                            mat_b[i] = m.fem_right - 6 * m.elastic_modulus * m.moment_of_inertia * l_support.settlement / (m.length ** 2)
                else:
                    mat_b[i] = m.fem_right -6 * m.elastic_modulus * m.moment_of_inertia * m.chord_rotation / m.length

                j = initial_column_index + (4 if left_deflection_is_unknown else 3) # moves to the next unknown slope
                i += 1 # moves to the next equation

        # support equations
        j = 0
        for k, c in enumerate(self.components):
            if isinstance(c, Support):
                if isinstance(c, FixedSupport):
                    # slope = 0 at fixed support
                    mat_a[i, j] = 1
                    mat_b[i] = 0
                else:
                    # sum of moments = 0 at non-fixed supports
                    if j > 0:
                        mat_a[i, j - 1] = 1
                    if j + 1 < n_unknowns:
                        mat_a[i, j + 1] = 1
                    mat_b[i] = 0
                i += 1
                j += 3
            elif isinstance(c, Member):
                if k == 0:
                    j += 4
                elif k + 1 < len(self.components) and isinstance(self.components[k + 1], Member):
                    j += 4

        # overhanging equations
        # If the member is overhanging then the end moment at the free side is 0
        # also the shear at the overhanging side is 0. these give two extra equations
        first_component = self.components[0]
        if isinstance(first_component, Member): # The beam is overhanging at the start
            # moment at the free side
            mat_a[i, 2] = 1
            mat_b[i] = 0
            i += 1

            # moment at the supported side
            mat_a[i, 3] =  1
            rhs = 0
            for l in first_component.loadings:
                if isinstance(l, Couple):
                    rhs += l.value
                elif isinstance(l, PointLoad):
                    rhs += l.y_value * (first_component.length - l.point_of_application)
                elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                    eq = l.equivalent_point_load()
                    rhs += eq.y_value * (first_component.length - eq.point_of_application)
            mat_b[i] = rhs
            i += 1

        last_component = self.components[-1]
        if isinstance(last_component, Member): # The beam is overhanging at the end
            # moment at the free side
            mat_a[i, n_unknowns - 3] = 1
            mat_b[i] = 0
            i += 1
            # moment at the supported side
            mat_a[i, n_unknowns - 4] = 1
            rhs = 0
            for l in last_component.loadings:
                if isinstance(l, Couple):
                    rhs += l.value
                elif isinstance(l, PointLoad):
                    rhs += l.y_value * l.point_of_application
                elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                    eq = l.equivalent_point_load()
                    rhs += eq.y_value * eq.point_of_application
            mat_b[i] = rhs
            i += 1

        # equations produced when two members are joined without an external support
        j = 0
        for k, c in enumerate(self.components):
            if isinstance(c, Support):
                j += 3 # move to the next slope
            elif isinstance(c, Member):
                if k > 0:
                    previous_component = self.components[k - 1]
                    if isinstance(previous_component, Member): # The previous component is also a member
                        mat_a[i, j - 1] = 1
                        mat_a[i, j + 2] = 1
                        mat_b[i] = 0
                        i += 1

                        mat_a[i, j - 2] = 1 / previous_component.length
                        mat_a[i, j - 1] = -1 / previous_component.length
                        mat_a[i, j + 2] = 1 / c.length
                        mat_a[i, j + 3] = 1 / c.length

                        rhs = 0
                        for l in previous_component.loadings:
                            if isinstance(l, Couple):
                                rhs += l.value / previous_component.length
                            elif isinstance(l, PointLoad):
                                rhs += (l.y_value * l.point_of_application) / previous_component.length
                            elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                                eq = l.equivalent_point_load()
                                rhs += (eq.y_value * eq.point_of_application) / previous_component.length

                        for l in c.loadings:
                            if isinstance(l, Couple):
                                rhs += l.value / c.length
                            elif isinstance(l, PointLoad):
                                rhs += (l.y_value * (c.length - l.point_of_application)) / c.length
                            elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                                eq = l.equivalent_point_load()
                                rhs += (eq.y_value * (c.length - eq.point_of_application)) / c.length
                        mat_b[i] = rhs
                        i += 1 # move to the next equation
                        j += 4 # move to the next slope

        result = np.linalg.inv(mat_a) @ mat_b

        # store the end moments in the members
        j = 0
        for k, c in enumerate(self.components):
            if isinstance(c, Support):
                j += 1
            elif isinstance(c, Member):
                if k > 0 and isinstance(self.components[k - 1], Member):
                    j += 2
                c.left_end_moment = result[j]
                c.right_end_moment = result[j + 1]
                j += 2

        # compute member end shears
        for c in self.components:
            if isinstance(c, Member):
                c.compute_end_shears()


        # store the reactions in the supports
        for k, c in enumerate(self.components):
            if isinstance(c, RollerSupport | HingeSupport | FixedSupport):
                # initialize the support reactions to 0
                c.v_reaction = 0
                if isinstance(c, HingeSupport | FixedSupport):
                    c.h_reaction = 0
                if isinstance(c, FixedSupport):
                    c.m_reaction = 0

                # compute the reactions
                l_component = None if k == 0 else self.components[k - 1]
                r_component = None if k + 1 == len(self.components) else self.components[k + 1]
                if isinstance(l_component, Member):
                    c.v_reaction += l_component.right_end_shear
                    if isinstance(c, FixedSupport):
                        c.m_reaction += l_component.right_end_moment
                if isinstance(r_component, Member):
                    c.v_reaction += r_component.left_end_shear
                    if isinstance(c, FixedSupport):
                        c.m_reaction += r_component.left_end_moment

        # Yay
        k = 1
        for c in self.components:
            if isinstance(c, RollerSupport | HingeSupport | FixedSupport):
                print(f"support {k}:")
                if isinstance(c, HingeSupport | FixedSupport):
                    print(f"horizontal reaction: {c.h_reaction}")
                print(f"vertical reaction: {c.v_reaction}")
                if isinstance(c, FixedSupport):
                    print(f"moment reaction: {c.m_reaction}")
                print("")
                k += 1

    def analyze(self):
        if self.is_determinate():
            return self.analyze_determinate_beam()
        elif self.is_indeterminate():
            return self.analyze_indeterminate_beam()

    def compute_shear_force(self):
        n_points = 5_000
        x = np.linspace(0, self.total_length, n_points + 2)
        shear_force = np.zeros((n_points + 2,))
        i = 1
        #TODO: note points where the there are changes on the figure
        for c in self.components:
            if isinstance(c, Member):
                n = math.floor(n_points * c.length / self.total_length)
                _, member_shear_force = c.compute_shear_force(n)
                shear_force[i: i+n] = member_shear_force
                i += n
        return x, shear_force

    def compute_bending_moment(self):
        n_points = 5_000
        x = np.linspace(0, self.total_length, n_points + 2)
        bending_moment = np.zeros((n_points + 2,))

        #TODO: note points where there are changes in the figure
        i = 1
        for c in self.components:
            if isinstance(c, Member):
                n = math.floor(n_points * c.length / self.total_length)
                _, member_bending_moment = c.compute_bending_moment(n)
                bending_moment[i: i + n] = member_bending_moment
                i += n
        return x, bending_moment

    def draw_shear_force_diagram(self):
        x, shear = self.compute_shear_force()
        plt.plot(x, shear)
        plt.grid()
        plt.show()

    def draw_bending_moment_diagram(self):
        x, bending_moment = self.compute_bending_moment()
        plt.plot(x, bending_moment)
        plt.grid()
        plt.show()