import numpy as np
from enum import Enum

class Load:
    pass;

class PointLoad(Load):
    def __init__(
            self,
            point_of_application: float,
            y_value: float = 0,
            x_value: float = 0,
    ):
        self.y_value = y_value
        self.x_value = x_value  # right is positive and left is negative
        self.point_of_application = point_of_application

    @classmethod
    def from_angle(
            cls,
            point_of_application: float,
            angle_in_deg: float,
            value: float
    ):
        """angle_in_deg is the angle of the load from vertical. clockwise angle is positive and anticlockwise is negative"""
        return cls(
            point_of_application=point_of_application,
            y_value=value * np.cos(angle_in_deg * np.pi / 180),
            x_value=value * np.sin(angle_in_deg * np.pi / 180)
        )


class UniformlyDistributedLoad(Load):
    def __init__(
            self,
            value: float,
            starting_point: float,
            length: float
    ):
        self.value = value
        self.starting_point = starting_point
        self.length = length

    def equivalent_point_load(self) -> PointLoad:
        return PointLoad(
            y_value=self.value * self.length,
            point_of_application=self.starting_point + self.length / 2
        )

class Orientation(Enum):
    left = -1
    right = 1

class VerticallyDistributedLoad(Load):
    def __init__(
            self,
            vertex: float,
            orientation: Orientation,
            starting_point: float,
            length: float
    ):
        self.vertex = vertex
        self.orientation = orientation
        self.starting_point = starting_point
        self.length = length

    def equivalent_point_load(self) -> PointLoad:
        # the value of the point load is calculated as the area under the triangle
        # the position is calculated as the centroid of the shape
        area = self.vertex * self.length / 2
        centroid = self.starting_point + (self.length / 3 if self.orientation == Orientation.left else self.length * 2 / 3)
        return PointLoad(
            y_value=area,
            point_of_application=self.starting_point + centroid
        )


class Couple(Load):
    def __init__(
            self,
            value: float,
            point_of_application: float
    ):
        self.value = value
        self.point_of_application = point_of_application