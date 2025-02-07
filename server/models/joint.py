from models.node import Node

class Joint(Node):
    def __init__(self, position: tuple[float, float]):
        super().__init__(position)

class HingedJoint(Joint):
    def __init__(self, position: tuple[float, float]):
        super().__init__(position)

class FixedJoint(Joint):
    def __init__(self, position: tuple[float, float]):
        super().__init__(position)