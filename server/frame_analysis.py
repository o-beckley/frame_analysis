from grpc_generated import service_pb2_grpc, service_pb2
from models.component import Component
from models.load import Couple, PointLoad, Load, UniformlyDistributedLoad, VerticallyDistributedLoad
from models.member import Member
from models.beam import Beam
from models.support import Support, HingeSupport, FixedSupport, RollerSupport
from models.load import Orientation

class FrameAnalysisService(service_pb2_grpc.FrameAnalysisServicer):
    def AnalyzeBeam(self, request, context):
        beam = Beam([parse_component(c) for c in request.components])
        beam.analyze()
        retval = service_pb2.Beam(
            components=[encode_component(c) for c in beam.components],
            log=service_pb2.AnalysisLog(messages=beam.log.messages)
        )
        return retval

def encode_component(c: Component) -> service_pb2.Component:
    component = service_pb2.Component()
    if isinstance(c, Member):
        component = service_pb2.Component(
            component_type = service_pb2.Component.MEMBER,
            member = service_pb2.Member(
                moment_of_inertia=c.moment_of_inertia,
                elastic_modulus=c.elastic_modulus,
                length=c.length,
                loadings=[encode_load(l) for l in c.loadings]
            )
        )

    elif isinstance(c, Support):
        if isinstance(c, RollerSupport):
            component = service_pb2.Component(
                component_type = service_pb2.Component.SUPPORT,
                support = service_pb2.Support(
                    support_type = service_pb2.Support.ROLLER_SUPPORT,
                    roller_support = service_pb2.RollerSupport(
                        v_reaction = c.v_reaction,
                        settlement = c.settlement
                    )
                )
            )
        elif isinstance(c, HingeSupport):
            component = service_pb2.Component(
                component_type = service_pb2.Component.SUPPORT,
                support = service_pb2.Support(
                    support_type = service_pb2.Support.HINGE_SUPPORT,
                    hinge_support = service_pb2.HingeSupport(
                        v_reaction = c.v_reaction,
                        h_reaction = c.h_reaction,
                        settlement = c.settlement
                    )
                )
            )
        elif isinstance(c, FixedSupport):
            component = service_pb2.Component(
                component_type = service_pb2.Component.SUPPORT,
                support = service_pb2.Support(
                    support_type = service_pb2.Support.FIXED_SUPPORT,
                    fixed_support = service_pb2.FixedSupport(
                        v_reaction = c.v_reaction,
                        h_reaction = c.h_reaction,
                        m_reaction = c.m_reaction,
                        settlement = c.settlement,
                    )
                )
            )
    return component

def encode_load(l: Load) -> service_pb2.Load:
    load = service_pb2.Load()
    if isinstance(l, Couple):
        load = service_pb2.Load(
            load_type = service_pb2.Load.COUPLE,
            couple = service_pb2.Couple(
                value = l.value,
                point_of_application = l.point_of_application,
            )
        )
    elif isinstance(l, PointLoad):
        load = service_pb2.Load(
            load_type = service_pb2.Load.POINT_LOAD,
            point_load = service_pb2.PointLoad(
                y_value = l.y_value,
                x_value = l.x_value,
                point_of_application = l.point_of_application,
            )
        )
    elif isinstance(l, UniformlyDistributedLoad):
        load = service_pb2.Load(
            load_type = service_pb2.Load.UNIFORMLY_DISTRIBUTED_LOAD,
            uniformly_distributed_load = service_pb2.UniformlyDistributedLoad(
                starting_point = l.starting_point,
                value = l.value,
                length = l.length,
            )
        )
    elif isinstance(l, VerticallyDistributedLoad): #TODO:
        load = service_pb2.Load(
            load_type = service_pb2.Load.VERTICALLY_DISTRIBUTED_LOAD,
            vertically_distributed_load = service_pb2.VerticallyDistributedLoad(
                orientation = service_pb2.VerticallyDistributedLoad.LEFT if l.orientation == Orientation.left else service_pb2.VerticallyDistributedLoad.RIGHT,
                vertex = l.vertex,
                starting_point = l.starting_point,
                length = l.length,
            )
        )
    return load

def parse_component(c) -> Component:
    if c.component_type == service_pb2.Component.MEMBER:
        return Member(
            length=c.member.length,
            elastic_modulus=c.member.elastic_modulus,
            moment_of_inertia=c.member.moment_of_inertia,
            loadings=[parse_load(l) for l in c.member.loadings]
        )
    elif c.component_type == service_pb2.Component.SUPPORT:
        if c.support.support_type == service_pb2.Support.ROLLER_SUPPORT:
            return RollerSupport(settlement=c.support.roller_support.settlement)
        elif c.support.support_type == service_pb2.Support.HINGE_SUPPORT:
            return HingeSupport(settlement=c.support.hinge_support.settlement)
        elif c.support.support_type == service_pb2.Support.FIXED_SUPPORT:
            return FixedSupport(settlement=c.support.fixed_support.settlement)

def parse_load(load) -> Load:
    if load.load_type == service_pb2.Load.COUPLE:
        return Couple(
            value=load.couple.value,
            point_of_application=load.couple.point_of_application
        )
    elif load.load_type == service_pb2.Load.POINT_LOAD:
        return PointLoad(
            x_value=load.point_load.x_value,
            y_value=load.point_load.y_value,
            point_of_application=load.point_load.point_of_application,
        )
    elif load.load_type == service_pb2.Load.UNIFORMLY_DISTRIBUTED_LOAD:
        return UniformlyDistributedLoad(
            starting_point=load.uniformly_distributed_load.starting_point,
            length=load.uniformly_distributed_load.length,
            value=load.uniformly_distributed_load.value
        )
    elif load.load_type == service_pb2.Load.VERTICALLY_DISTRIBUTED_LOAD: #TODO:
        return VerticallyDistributedLoad(
            starting_point= load.vertically_distributed_load.starting_point,
            length=load.vertically_distributed_load.length,
            vertex= load.vertically_distributed_load.vertex,
            orientation= Orientation.left if load.vertically_distributed_load.orientation == service_pb2.VerticallyDistributedLoad.LEFT else Orientation.right
        )