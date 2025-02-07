from models.node import Node
from models.member import Member

class Frame:
    def __init__(self, nodes: list[Node], members: list[Member]):
        self.nodes = nodes
        self.members = members
