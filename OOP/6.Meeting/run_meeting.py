from PyQt5.QtWidgets import  QMainWindow, QApplication, QMessageBox, QFileDialog
from UI_MeetingRoom import Ui_MainWindow
from PyQt5.QtCore import QDate, QTime
from MeetingRoom import MeetingRoomSystem
import sys
from Room import  Room
from Meeting import Meeting
from MeetingRoom import MeetingRoomSystem
import  time


"""点击按钮，在控制台输出helloworld"""

class mywindow(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super(mywindow, self).__init__()
        self.setupUi(self)
        self.mrsystem = MeetingRoomSystem()
        self.add_room.clicked.connect(self.addRoom)  # 槽函数不用加括号
        self.add_meeting.clicked.connect(self.addMeeting)  # 槽函数不用加括号
        self.query_meeting.clicked.connect(self.queryMeeting)
        self.query_room.clicked.connect(self.queryRoom)
        self.to_File.clicked.connect(self.toFile)
        self.load_file.clicked.connect(self.loadFile)

    def addRoom(self):
        print(" ----- in addRoom ----- ")
        _no = self.room_no.text()
        _capacity = self.room_capacity.text()
        if self.mrsystem.addRoom(_no, _capacity):
            self.room_no.setText("")
            self.room_capacity.setText("")
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                        "操作结果",
                                        "会议室编号：" + str(_no) + "\n" + "会议室容量：" + str(_capacity) +  "\n插入成功!!",
                                        QMessageBox.Yes)
        else:
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                            "操作结果",
                                            "添加会议室失败！",
                                            QMessageBox.Yes)
        print(" ----- out addRoom ----- ")

    def addMeeting(self):
        print(" ----- in addMeeting ----- ")
        _no = self.meeting_room_no.text()
        _data = self.meeting_data.text()
        _start_time = self.meeting_start_time.text()
        _end_time = self.meeting_end_time.text()
        _linkman = self.meeting_linkman.text()
        # set default
        if self.mrsystem.addMeeting(_no, _data, _start_time, _end_time, _linkman):
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                            "操作结果",
                                            "会议室编号：" + str(_no) + "\n" + "会议日期：" + str(_data) + "\n联系人：" + str(
                                                _linkman) + "\n插入成功!!",
                                            QMessageBox.Yes)
        else:
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                            "操作结果",
                                            "添加会议失败！！",
                                            QMessageBox.Yes)
        self.meeting_room_no.setText("")
        now_day = time.strftime("%Y-%m-%d", time.localtime())
        self.meeting_data.setDate(QDate.fromString(now_day,"yyyy/MM/dd"))
        now_time = time.strftime("%H:%M", time.localtime())
        print(now_time)
        self.meeting_start_time.setTime(QTime.fromString(now_time, "hh:mm"))
        self.meeting_end_time.setTime(QTime.fromString(now_time, "hh:mm"))
        self.meeting_linkman.setText("")

        ### infomation


        ## end set
        print(" ----- out addMeeting ----- ")

    def queryMeeting(self):
        _data = self.query_meeting_data.text()
        _no = self.query_meeting_room_no.text()
        _meetings = self.mrsystem.queryPlan(_data, _no)
        ans_string = "no-start_time-end_time\n"
        for item in _meetings:
            ans_string += str(item.no)
            ans_string += "-"
            ans_string += str(item.start_time)
            ans_string += "-"
            ans_string += str(item.end_time)
            ans_string += "\n"
        reply = QMessageBox.information(self,  # 使用infomation信息框
                                        "查询结果",
                                        ans_string,
                                        QMessageBox.Yes)
        now_day = time.strftime("%Y-%m-%d", time.localtime())
        self.query_meeting_data.setDate(QDate.fromString(now_day,"yyyy/MM/dd"))
        self.query_meeting_room_no.setText("")

    def queryRoom(self):
        print(" ------ in query room ----- ")
        _data = self.query_room_data.text()
        print("data", _data)
        _capacity = self.query_room_capacity.text()
        _rooms = self.mrsystem.queryRoom(_data, _capacity)
        print(_rooms)
        ans_string = "room_no\n"
        for item in _rooms:
            ans_string += str(item.no)
            ans_string += "\n"
        reply = QMessageBox.information(self,  # 使用infomation信息框
                                        "查询结果",
                                        ans_string,
                                        QMessageBox.Yes)
        now_day = time.strftime("%Y-%m-%d", time.localtime())
        self.query_room_data.setDate(QDate.fromString(now_day, "yyyy/MM/dd"))
        self.query_room_capacity.setText("")
        print(" ----- out qurey room ----- ")

    def toFile(self):
        print(" ----- in toFile ----- ")
        meeting_file = open("meeting.txt", "w")
        meeting_str = ""
        for item in self.mrsystem.meetings:
            meeting_str += str(item.no)
            meeting_str += "-"
            meeting_str += str(item.data)
            meeting_str += "-"
            meeting_str += str(item.start_time)
            meeting_str += "-"
            meeting_str += str(item.end_time)
            meeting_str += "-"
            meeting_str += str(item.linkman)
            meeting_str += "\n"
        meeting_file.write(meeting_str)
        meeting_file.close()
        reply = QMessageBox.information(self,  # 使用infomation信息框
                                        "操作结果",
                                        "转储到文件成功！！",
                                        QMessageBox.Yes)
        print(" ----- out tofile ----- ")

    def loadFile(self):
        print(" ----- in load file ----- ")
        fileName1, filetype = QFileDialog.getOpenFileName(self,
                                                          "选取文件",
                                                          "E:/",
                                                          "All Files (*);;Text Files (*.txt)")  # 设置文件扩展名过滤,注意用双分号间隔
        self.mrsystem.loadFile(fileName1)
        print(" ----- out load file ------")

if __name__ == "__main__":

    app = QApplication(sys.argv)
    myshow = mywindow()
    myshow.show()
    sys.exit(app.exec_())