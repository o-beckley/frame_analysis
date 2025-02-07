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

def encode_component(c: Component) -> service_pb2.BeamComponent:
    component = service_pb2.BeamComponent()
    if isinstance(c, Member):
        component = service_pb2.BeamComponent(
            type = service_pb2.BeamComponent.MEMBER,
            member = service_pb2.Member(
                moment_of_inertia=c.moment_of_inertia,
                elastic_modulus=c.elastic_modulus,
                length=c.length,
                position_x=c.position_x,
                position_y=c.position_y,
                loadings=[encode_load(l) for l in c.loadings]
            )
        )

    elif isinstance(c, Support):
        if isinstance(c, RollerSupport):
            component = service_pb2.BeamComponent(
                type = service_pb2.BeamComponent.SUPPORT,
                support = service_pb2.Support(
                    type = service_pb2.Support.ROLLER,
                    position_x=c.position_x,
                    position_y=c.position_y,
                    roller = service_pb2.RollerSupport(
                        v_reaction = c.v_reaction,
                        settlement = c.settlement
                    )
                )
            )
        elif isinstance(c, HingeSupport):
            component = service_pb2.BeamComponent(
                type = service_pb2.BeamComponent.SUPPORT,
                support = service_pb2.Support(
                    type = service_pb2.Support.HINGE,
                    position_x=c.position_x,
                    position_y=c.position_y,
                    hinge = service_pb2.HingeSupport(
                        v_reaction = c.v_reaction,
                        h_reaction = c.h_reaction,
                        settlement = c.settlement
                    )
                )
            )
        elif isinstance(c, FixedSupport):
            component = service_pb2.BeamComponent(
                type = service_pb2.BeamComponent.SUPPORT,
                support = service_pb2.Support(
                    type = service_pb2.Support.FIXED,
                    position_x=c.position_x,
                    position_y=c.position_y,
                    fixed = service_pb2.FixedSupport(
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
            type = service_pb2.Load.COUPLE,
            couple = service_pb2.Couple(
                value = l.value,
                point_of_application = l.point_of_application,
            )
        )
    elif isinstance(l, PointLoad):
        load = service_pb2.Load(
            type = service_pb2.Load.POINT,
            point_load = service_pb2.PointLoad(
                y_value = l.y_value,
                x_value = l.x_value,
                point_of_application = l.point_of_application,
            )
        )
    elif isinstance(l, UniformlyDistributedLoad):
        load = service_pb2.Load(
            type = service_pb2.Load.UNIFORMLY_DISTRIBUTED,
            uniformly_distributed_load = service_pb2.UniformlyDistributedLoad(
                starting_point = l.starting_point,
                value = l.value,
                length = l.length,
            )
        )
    elif isinstance(l, VerticallyDistributedLoad): #TODO:
        load = service_pb2.Load(
            type = service_pb2.Load.VERTICALLY_DISTRIBUTED,
            vertically_distributed_load = service_pb2.VerticallyDistributedLoad(
                orientation = service_pb2.VerticallyDistributedLoad.LEFT if l.orientation == Orientation.left else service_pb2.VerticallyDistributedLoad.RIGHT,
                vertex = l.vertex,
                starting_point = l.starting_point,
                length = l.length,
            )
        )
    return load

def parse_component(c) -> Component:
    if c.type == service_pb2.BeamComponent.MEMBER:
        return Member(
            length=c.member.length,
            elastic_modulus=c.member.elastic_modulus,
            moment_of_inertia=c.member.moment_of_inertia,
            position=(c.member.position_x, c.member.position_y),
            loadings=[parse_load(l) for l in c.member.loadings]
        )
    elif c.type == service_pb2.BeamComponent.SUPPORT:
        if c.support.type == service_pb2.Support.ROLLER:
            return RollerSupport(settlement=c.support.roller.settlement)
        elif c.support.type == service_pb2.Support.HINGE:
            return HingeSupport(settlement=c.support.hinge.settlement)
        elif c.support.type == service_pb2.Support.FIXED:
            return FixedSupport(settlement=c.support.fixed.settlement)

def parse_load(load) -> Load:
    if load.type == service_pb2.Load.COUPLE:
        return Couple(
            value=load.couple.value,
            point_of_application=load.couple.point_of_application
        )
    elif load.type == service_pb2.Load.POINT:
        return PointLoad(
            x_value=load.point_load.x_value,
            y_value=load.point_load.y_value,
            point_of_application=load.point_load.point_of_application,
        )
    elif load.type == service_pb2.Load.UNIFORMLY_DISTRIBUTED:
        return UniformlyDistributedLoad(
            starting_point=load.uniformly_distributed_load.starting_point,
            length=load.uniformly_distributed_load.length,
            value=load.uniformly_distributed_load.value
        )
    elif load.type == service_pb2.Load.VERTICALLY_DISTRIBUTED: #TODO:
        return VerticallyDistributedLoad(
            starting_point= load.vertically_distributed_load.starting_point,
            length=load.vertically_distributed_load.length,
            vertex= load.vertically_distributed_load.vertex,
            orientation= Orientation.left if load.vertically_distributed_load.orientation == service_pb2.VerticallyDistributedLoad.LEFT else Orientation.right
        )