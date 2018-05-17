from PyQt5.QtWidgets import  QMainWindow, QApplication
from UI_Poly import Ui_MainWindow
from Poly import Poly
import sys

"""点击按钮，在控制台输出helloworld"""

class mywindow(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super(mywindow, self).__init__()
        self.setupUi(self)
        self.get_ans.clicked.connect(self.myPrint)  # 槽函数不用加括号

    def myPrint(self):  # 定义槽
        _a = int(self.param_a.toPlainText())
        _b = int(self.param_b.toPlainText())
        _c = int(self.param_c.toPlainText())
        poly = Poly(_a, _b, _c)
        answer = poly.get_answer()
        self.ans_1.setText(str(answer[0]))
        self.ans_2.setText(str(answer[1]))

if __name__ == "__main__":

    app = QApplication(sys.argv)
    myshow = mywindow()
    myshow.show()
    sys.exit(app.exec_())