

class Point(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y


class Shape(object):
    def __init__(self):
        self.name = "circle"
        self.is_chosen = False

    def offset(self):
        pass

    def onPress(self):
        pass

    def onMove(self, cx, cy):
        print(" ----- on move ----- ")
        if self.is_chosen:
            print(" in is_chosen ")
            self.offset(cx, cy)
        print(" ----- out on move ----- ")