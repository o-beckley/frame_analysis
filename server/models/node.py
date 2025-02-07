from models.component import Component

class Node(Component):
    def __init__(self, position: tuple[float, float]):
        super().__init__(position)

class EmptyNode(Node):
    def __init__(self, position: tuple[float, float]):
        super().__init__(position)