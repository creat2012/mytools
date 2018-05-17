


class Room(object):
    def __init__(self, _no, _capacity):
        self.no = _no
        self.capacity = _capacity
        self.used_data = []
        self.used = False