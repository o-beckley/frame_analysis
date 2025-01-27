from component import Component

class Support(Component):
    def __init__(self, position: tuple[float, float] = None, settlement: float = 0.0):
        self.settlement = settlement
        super().__init__(position)

class RollerSupport(Support):
    def __init__(
            self,
            position: tuple[float, float] = None,
            v_reaction: float = None,
            settlement: float = 0.0
    ):
        self.v_reaction = v_reaction
        self.rotation = None # to be determined
        super().__init__(position, settlement)


class HingeSupport(Support):
    def __init__(
            self,
            position: tuple[float, float] = None,
            v_reaction: float = None,
            h_reaction: float = None,
            settlement: float = 0.0
    ):
        self.v_reaction = v_reaction
        self.h_reaction = h_reaction
        self.rotation = None # to be determined
        super().__init__(position, settlement)


class FixedSupport(Support):
    def __init__(
            self,
            position: tuple[float, float] = None,
            v_reaction: float = None,
            h_reaction: float = None,
            m_reaction: float = None,
            settlement: float = 0.0
    ):
        self.v_reaction = v_reaction
        self.h_reaction = h_reaction
        self.m_reaction = m_reaction
        self.rotation = 0.0 # this is 0 because the support is fixed
        super().__init__(position, settlement)