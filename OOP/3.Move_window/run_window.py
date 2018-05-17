from PyQt5.QtWidgets import  QMainWindow, QApplication, QWidget
from window_rectangle import Ui_Form
import sys
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from Rectangle import Rectangle
from MyWindow import MyWindow

class mywindow(QWidget, Ui_Form):
    def __init__(self):
        super(mywindow, self).__init__()
        self.setupUi(self)
        self.rect = MyWindow(3, 30, 100, 100, 400, 400)
        self.press_point = None
        self.release_point = None

    def paintEvent(self, e):

        ## what you will draw
        ## pinter
        pinter = QPainter()
        ## begin
        pinter.begin(self)
        self.drawRectangles(pinter)
        pinter.end()
        ## end

    def drawRectangles(self, pinter):
        pen = QPen(Qt.red, self.rect.f_width, Qt.SolidLine)
        pinter.setPen(pen)
        pinter.drawRect(QRect(QPoint(self.rect.left, self.rect.up), QPoint(self.rect.right, self.rect.down)))
        pinter.drawLine(QPoint(self.rect.left, self.rect.up + self.rect.t_height),
                        QPoint(self.rect.right, self.rect.up + self.rect.t_height))

    def mousePressEvent(self, event):
        print(" ----- in mousepressEvent ----- ")
        self.press_point = event.pos()
        self.rect.onPress(self.press_point.x(), self.press_point.y())
        print(" ----- out mousepressEvent ----- ")

    def mouseReleaseEvent(self, event):
        print(" ----- in mousereleaseevent -----")
        self.release_point = event.pos()
        cx = self.release_point.x() - self.press_point.x()
        cy = self.release_point.y() - self.press_point.y()
        print (cx, cy)
        self.rect.onMove(cx , cy)
        #print("after position")
        #print(self.rect.left, self.rect.up, self.rect.right, self.rect.down)
        self.repaint()
        print(" ----- out mousereleaseevent -----")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    myshow = mywindow()
    myshow.show()
    sys.exit(app.exec_())