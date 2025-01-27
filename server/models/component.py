class Component:
    def __init__(self, position: tuple[float, float] | None):
        self.position_x = None if position is None else position[0]
        self.position_y = None if position is None else position[1]
