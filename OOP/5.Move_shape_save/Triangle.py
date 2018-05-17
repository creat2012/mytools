


from Shape import Shape
from math_function import IsInside

class Triangle(Shape):
    def __init__(self, x1, y1, x2, y2, x3, y3):
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
        self.x3 = x3
        self.y3 = y3

    def offset(self, cx, cy):
        print(" ----- in offset ----- ")
        self.x1 += cx
        self.y1 += cy
        self.x2 += cx
        self.y2 += cy
        self.x3 += cx
        self.y3 += cy
        print(" ----- out offset ----- ")

    def onPress(self, cx, cy):
        print(" ----- in onpress ----- ")
        self.is_chosen = False
        if IsInside(self.x1, self.y1, self.x2, self.y2, self.x3, self.y3, cx, cy):
            self.is_chosen = True
        else:
            self.is_chosen = False
        print(" ----- out onpress ----- ")