
from Room import Room
from Meeting import  Meeting

class MeetingRoomSystem(object):
    def __init__(self):
        self.rooms = []
        self.room_number = 0
        self.meetings = []
        self.meeting_number = 0

    def addRoom(self, _no, _capacity):
        room = Room(_no, _capacity)
        for item in self.rooms:
            if item.no == _no:
                return False
        else:
            self.rooms.append(room)
            self.room_number = self.room_number + 1
            return True

    def addMeeting(self, _no, _data, _start_time, _end_time, _linkman):
        print(" ----- in add Meeting ----- ")
        print(self.meeting_number)
        for item in self.rooms:
            if item.no == _no:
                for day in item.used_data:
                    if day == _data:
                        return False
                else:
                    meeting = Meeting(_no, _data, _start_time, _end_time, _linkman)
                    self.meetings.append(meeting)
                    item.used_data.append(_data)
                    return True
        else:
            return False
        self.meeting_number = self.meeting_number + 1
        print(" ------ out add meeting ----- ")

    def loadFile(self, path):
        meeting_file = open(path, "r")
        while True:
            line = meeting_file.readline()
            if line == "" or line == "\n":
                break
            print(line.split("-"))
            self.addMeeting(*(line.split("-")))
        print(self.meeting_number)

    def queryPlan(self, _data, _no):
        plans = []
        for item in self.meetings:
            if item.data == _data and item.no == _no:
                plans.append(item)
        return plans

    def queryRoom(self, _data, _num):
        print(" ----- in query room ----- ")
        the_rooms = []
        ## date and capacity given
        """
        for item in self.rooms:
            if item.used == False and item.data == _data and item.capacity >= _num:
                the_rooms.append(item)
        """

        # query by capacity
        for item in self.rooms:
            if int(item.capacity) >= int(_num):
                for day in item.used_data:
                    print(day, _data)
                    if day == _data:
                        break
                else:
                    the_rooms.append(item)
        return the_rooms

    #def showPlan(self):
