

from Shape import Shape
class Line(Shape):

    def __init__(self, _x1, _y1, _x2, _y2):
        self.x1 = _x1
        self.y1 = _y1
        self.x2 = _x2
        self.y2 = _y2

    def offset(self, cx, cy):
        print(" ----- in off set ----- ")
        self.x1 += cx
        self.y1 += cy
        self.x2 += cx
        self.y2 += cy
        print(" ----- out offset ----- ")

    def onPress(self, cx, cy):
        print(" ----- in onPress ----- ")
        if (self.x1 - cx) * (cy - self.y2) == (self.y1 - cy) * (cx - self.x2):
            self.is_chosen = True
        else:
            self.is_chosen = False
        print(" ----- out onPress ----- ")