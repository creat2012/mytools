from PyQt5.QtWidgets import  QMainWindow, QApplication, QWidget, QFileDialog
from move_shape import Ui_Form
import sys
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from MyWindow import MyWindow
from Shape import Shape
from Circle import Circle
from Rectangle import  Rectangle
from Triangle import Triangle
from Line import Line
#from Arrow import Arrow

class mywindow(QWidget, Ui_Form):
    def __init__(self):
        super(mywindow, self).__init__()
        self.setupUi(self)
        # default shape
        self.shape = Circle(100, 200, 100)
        self.shape.name = "circle"
        ###############
        self.chosen_button = "circle"
        self.press_point = None
        self.release_point = None
        self.openimage.clicked.connect(self.openImage)
        self.saveimage.clicked.connect(self.saveImage)

    def paintEvent(self, e):
        ## what you will draw
        ## pinter
        now_shape = ""
        if self.circle.isChecked():
            now_shape = "circle"
        elif self.rectangle.isChecked():
            now_shape = "rectangle"
        elif self.line.isChecked():
            now_shape = "line"
        elif self.triangle.isChecked():
            now_shape = "triangle"

        if self.chosen_button != now_shape:
            if now_shape == "rectangle":
                self.shape = Rectangle(100, 100, 200, 200)
            elif now_shape == "circle":
                self.shape = Circle(100, 200, 100)
            elif now_shape == "line":
                self.shape = Line(100, 100, 100, 200)
            elif now_shape == "triangle":
                self.shape = Triangle(100, 100, 200, 200, 100, 300)
            self.shape.name = now_shape
            self.chosen_button = now_shape

        print(" now shape is ", self.shape.name)
        pinter = QPainter()
        ## begin
        pinter.begin(self)
        self.drawShape(pinter)
        pinter.end()
        ## end

    def drawShape(self, pinter):
        print(" ----- in drawshape ----- ")
        pen = QPen(Qt.red, 2, Qt.SolidLine)
        pinter.setPen(pen)
        if self.circle.isChecked():
            pinter.drawEllipse(self.shape.x, self.shape.y, self.shape.r, self.shape.r)
        elif self.rectangle.isChecked():
            pinter.drawRect(QRect(QPoint(self.shape.left, self.shape.up), QPoint(self.shape.right, self.shape.down)))
        elif self.line.isChecked():
            pinter.drawLine(QPoint(self.shape.x1, self.shape.y1), QPoint(self.shape.x2, self.shape.y2))
        elif self.triangle.isChecked():
            print(" in draw triangle ")
            pinter.drawConvexPolygon(QPolygon([QPoint(self.shape.x1, self.shape.y1),
                                              QPoint(self.shape.x2, self.shape.y2),
                                              QPoint(self.shape.x3, self.shape.y3)]))
        print(" ----- out drawshape ----- ")

    def mousePressEvent(self, event):
        print(" ----- in mousepressEvent ----- ")
        self.press_point = event.pos()

        self.shape.onPress(self.press_point.x(), self.press_point.y())
        print(" ----- out mousepressEvent ----- ")

    def mouseReleaseEvent(self, event):
        print(" ----- in mousereleaseevent -----")
        self.release_point = event.pos()
        cx = self.release_point.x() - self.press_point.x()
        cy = self.release_point.y() - self.press_point.y()
        self.shape.onMove(cx , cy)
        self.update()
        print(" ----- out mousereleaseevent -----")

    def saveImage(self):
        print(" ----- in save image ----- ")
        #qpix = self.grab(QRect(10, 100, 700, 700))
        #qpix.save("123.jpg")
        

        print(" ----- out save image ----- ")


    def openImage(self):
        # 打开文件路径
        # 设置文件扩展名过滤,注意用双分号间隔
        print(" ----- open image ----- ")
        imgName, imgType = QFileDialog.getOpenFileName(self,
                                                       "打开图片",
                                                       "",
                                                       " *.jpg;;*.png;;*.jpeg;;*.bmp;;All Files (*)")

        print(imgName)
        # 利用qlabel显示图
        png = QPixmap(imgName).scaled(self.label_.width(), self.label_.height())
        self.label_.setPixmap(png)



if __name__ == "__main__":
    app = QApplication(sys.argv)
    myshow = mywindow()
    myshow.show()
    sys.exit(app.exec_())