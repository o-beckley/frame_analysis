from models.component import Component
from models.load import Load, PointLoad, UniformlyDistributedLoad, VerticallyDistributedLoad, Couple
import numpy as np
import math

class Member(Component):
    def __init__(
        self,
        length: float,
        position: tuple[float, float] = None,
        loadings: list[Load] = None,
        elastic_modulus: float = None,
        moment_of_inertia: float = None,
        left_node_index: int = None,
        right_node_index: int = None,
    ):
        self.length = length
        self.loadings = [] if loadings is None else loadings
        self.fem_left, self.fem_right = self.compute_fem()
        self.elastic_modulus = elastic_modulus
        self.moment_of_inertia = moment_of_inertia
        self.left_node_index = left_node_index,
        self.right_node_index = right_node_index,
        self.chord_rotation = None
        self.left_end_moment = None
        self.right_end_moment = None
        self.left_end_shear = None
        self.right_end_shear = None
        super().__init__(position)

    def compute_fem(self):
        fem_left = 0.
        fem_right = 0.
        for loading in self.loadings:
            if isinstance(loading, Couple):
                l = self.length
                m = loading.value
                a = loading.point_of_application
                b = l - a
                fem_left += (m * b) / (l**2) * (b - 2 * a)
                fem_right -= (m * a) / (l**2) * (2 * b - a)
            elif isinstance(loading, PointLoad):
                l = self.length
                a = loading.point_of_application
                b = l - a
                p = loading.y_value
                fem_left += (p * a * b ** 2) / (l ** 2)
                fem_right -= (p * b * a ** 2) / (l ** 2)

            elif isinstance(loading, UniformlyDistributedLoad):
                l = self.length
                w = loading.value
                if loading.starting_point == 0 and loading.length == l: # spans the whole member
                    fem_left += (w * l**2) / 12
                    fem_right -= (w * l**2) / 12
                elif loading.starting_point == 0: # starts at the beginning of the member
                    a = loading.length
                    fem_left += (w * a**2) / (12 * l**2) * (6 * l**2 - 8 * a * l + 3 * a**2)
                    fem_right -= (w * a**3) / (12 * l**2) * (4 * l - 3 * a)
                elif loading.starting_point + loading.length == l: # ends at the ending of the member
                    a = loading.length
                    fem_left += (w * a**3) / (12 * l**2) * (4 * l - 3 * a)
                    fem_right -= (w * a**2) / (12 * l**2) * (6 * l**2 - 8 * a * l + 3 * a**2)
                else:
                    # TODO: handle the case where the udl is in the middle of the member and doesnt touch either end
                    raise NotImplementedError("FEM computation for UDL inbetween the span isn't done yet")
            elif isinstance(loading, VerticallyDistributedLoad):
                # TODO: cuh
                raise NotImplementedError("FEM computation for VDL isn't done yet")
        return [fem_left, fem_right]


    def compute_chord_rotation(self, dl: float, dr: float):
        self.chord_rotation = (dl - dr)  / self.length

    def compute_end_shears(self):
        # Use the two equilibrium equations to solve the two unknowns (left_shear, right_shear)
        if self.left_end_moment is not None and self.right_end_moment is not None: # end moments have been computed
            n_unknowns = 2
            mat_a = np.zeros(shape=(n_unknowns, n_unknowns))
            mat_b = np.zeros(shape=(n_unknowns,))
            applied_vertical_load = 0
            applied_moment_about_left = 0

            for l in self.loadings:
                if isinstance(l, Couple):
                    applied_moment_about_left += l.value
                elif isinstance(l, PointLoad):
                    applied_vertical_load += l.y_value
                    applied_moment_about_left += l.y_value * l.point_of_application
                elif isinstance(l, UniformlyDistributedLoad) or isinstance(l, VerticallyDistributedLoad):
                    eq = l.equivalent_point_load()
                    applied_vertical_load += eq.y_value
                    applied_moment_about_left += eq.y_value * eq.point_of_application

            # moment equation
            mat_a[0, 0] = 0
            mat_a[0, 1] = self.length
            mat_b[0] = applied_moment_about_left - self.left_end_moment - self.right_end_moment

            # vertical equation
            mat_a[1, 0] = 1
            mat_a[1, 1] = 1
            mat_b[1] = applied_vertical_load

            result = np.linalg.inv(mat_a) @ mat_b
            self.left_end_shear = result[0]
            self.right_end_shear = result[1]

            # TODO: make research on horizontal loadings

    def compute_shear_force(self, n_points: int):
        if self.left_end_shear is not None and self.right_end_shear is not None:
            x = np.linspace(0, self.length, n_points)
            shear_force = np.zeros((n_points,))

            i = 0
            shear_force[i:] += self.left_end_shear
            for l in self.loadings:
                if isinstance(l, PointLoad):
                    i = math.floor(n_points * l.point_of_application / self.length)
                    shear_force[i:] -= l.y_value
                elif isinstance(l, UniformlyDistributedLoad):
                    i = math.floor(n_points * l.starting_point / self.length)
                    n = math.ceil(n_points * l.length / self.length)
                    y = np.linspace(0, l.length, n)
                    shear_force[i: i+n] -= y * l.value # removing y = mx
                    shear_force[i+n:] = shear_force[i+n-1]
                elif isinstance(l, VerticallyDistributedLoad):
                    # TODO
                    raise NotImplementedError("I'll probably do this soon. Probably.")

            return x, shear_force

    def compute_bending_moment(self, n_points: int): #TODO: fix this mess
        if self.left_end_moment is not None and self.right_end_moment is not None:
            x = np.linspace(0, self.length, n_points)
            bending_moment = np.zeros((n_points,))

            slope = (self.right_end_moment - (- self.left_end_moment)) / self.length
            bending_moment += - self.left_end_moment + slope * x

            for l in self.loadings:
                if isinstance(l, Couple):
                    i = math.ceil(n_points * l.point_of_application / self.length)
                    max_point = l.value * l.point_of_application / self.length
                    m1 = max_point / l.point_of_application # dy/dx
                    x1 = np.linspace(0, l.point_of_application, i)
                    bending_moment[:i] += m1 * x1
                    min_point = l.value * (self.length - l.point_of_application) / self.length
                    m2 = min_point / (self.length - l.point_of_application)
                    x2 = np.linspace(0, self.length - l.point_of_application, n_points - i)
                    bending_moment[i:] += - min_point + m2 * x2
                elif isinstance(l, PointLoad):
                    i = math.ceil(n_points * l.point_of_application / self.length)
                    max_point = l.y_value * l.point_of_application * (self.length - l.point_of_application) / self.length
                    m1 = max_point / l.point_of_application # m = dy/dx
                    x1 = np.linspace(0, l.point_of_application, i)
                    bending_moment[:i] += m1 * x1
                    m2 = - max_point / (self.length - l.point_of_application)
                    x2 = np.linspace(0, self.length - l.point_of_application, n_points - i)
                    bending_moment[i:] += max_point + m2 * x2
                elif isinstance(l, UniformlyDistributedLoad):
                    i1 = math.ceil(n_points * l.starting_point / self.length)
                    i2 = math.ceil(n_points * (l.starting_point + l.length) / self.length)
                    r_l = (self.length - (l.starting_point + 0.5 * l.length)) * l.value * l.length / self.length
                    r_r = l.value * l.length - r_l

                    m1 = r_l
                    x1 = np.linspace(0, l.starting_point, i1)
                    bending_moment[:i1] += m1 * x1

                    m2 = - (r_l + r_r) / l.length
                    x2 = np.linspace(0, l.length, i2 - i1)
                    bending_moment[i1: i2] += 0.5 * m2 * (x2 ** 2) + r_l

                    m3 = - r_r
                    x3 = np.linspace(0, self.length - (l.starting_point + l.length), n_points - i2)
                    bending_moment[i2:] += (self.length - (l.starting_point + l.length)) * r_r + m3 * x3


                elif isinstance(l, VerticallyDistributedLoad):
                    pass # TODO

            return x, bending_moment