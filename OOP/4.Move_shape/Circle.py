
"""
    圆形类
"""
from math import sqrt
from Shape import Shape

class Circle(Shape):
    def __init__(self, x, y, r):
        self.x = x
        self.y = y
        self.r = r

    def offset(self, cx, cy):
        print(" ----- in offset ----- ")
        self.x += cx
        self.y += cy
        print(self.x , self.y)
        print(" ----- out offset ----- ")

    def onPress(self, cx, cy):
        # the distance bettwen (cx, cy) to the center of circle
        print(" ----- in onpress ----- ")
        dis = (self.x - cx) * (self.x - cx) + (self.y - cy) * (self.y - cy)
        if dis <= self.r * self.r:
            self.is_chosen = True
        else:
            self.is_chosen = False
        print(self.is_chosen)
        print(" ----- out onpress ----- ")
