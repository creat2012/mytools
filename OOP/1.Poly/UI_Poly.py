# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'UI_Poly.ui'
#
# Created by: PyQt5 UI code generator 5.9
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.get_ans = QtWidgets.QPushButton(self.centralwidget)
        self.get_ans.setGeometry(QtCore.QRect(280, 440, 211, 61))
        self.get_ans.setObjectName("get_ans")
        self.param_a = QtWidgets.QTextEdit(self.centralwidget)
        self.param_a.setGeometry(QtCore.QRect(100, 70, 91, 51))
        self.param_a.setObjectName("param_a")
        self.param_b = QtWidgets.QTextEdit(self.centralwidget)
        self.param_b.setGeometry(QtCore.QRect(330, 70, 101, 51))
        self.param_b.setObjectName("param_b")
        self.param_c = QtWidgets.QTextEdit(self.centralwidget)
        self.param_c.setGeometry(QtCore.QRect(530, 70, 121, 51))
        self.param_c.setObjectName("param_c")
        self.ans_1 = QtWidgets.QTextEdit(self.centralwidget)
        self.ans_1.setGeometry(QtCore.QRect(110, 270, 221, 41))
        self.ans_1.setObjectName("ans_1")
        self.ans_2 = QtWidgets.QTextEdit(self.centralwidget)
        self.ans_2.setGeometry(QtCore.QRect(420, 270, 211, 41))
        self.ans_2.setObjectName("ans_2")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(60, 80, 31, 31))
        self.label_2.setObjectName("label_2")
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setGeometry(QtCore.QRect(280, 80, 31, 31))
        self.label_4.setObjectName("label_4")
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setGeometry(QtCore.QRect(500, 80, 31, 31))
        self.label_3.setObjectName("label_3")
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        self.label_5.setGeometry(QtCore.QRect(60, 270, 31, 31))
        self.label_5.setObjectName("label_5")
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setGeometry(QtCore.QRect(370, 270, 31, 31))
        self.label_6.setObjectName("label_6")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 23))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.get_ans.setText(_translate("MainWindow", "求解一元二次方程"))
        self.label_2.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt;\">a：</span></p></body></html>"))
        self.label_4.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt;\">b：</span></p></body></html>"))
        self.label_3.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt;\">c：</span></p></body></html>"))
        self.label_5.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt;\">x1：</span></p></body></html>"))
        self.label_6.setText(_translate("MainWindow", "<html><head/><body><p><span style=\" font-size:16pt;\">x2：</span></p></body></html>"))

