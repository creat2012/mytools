# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'move_shape.ui'
#
# Created by: PyQt5 UI code generator 5.9
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(965, 616)
        self.circle = QtWidgets.QRadioButton(Form)
        self.circle.setGeometry(QtCore.QRect(40, 10, 89, 16))
        self.circle.setObjectName("circle")
        self.rectangle = QtWidgets.QRadioButton(Form)
        self.rectangle.setGeometry(QtCore.QRect(170, 10, 89, 16))
        self.rectangle.setObjectName("rectangle")
        self.triangle = QtWidgets.QRadioButton(Form)
        self.triangle.setGeometry(QtCore.QRect(310, 10, 89, 16))
        self.triangle.setObjectName("triangle")
        self.arrow = QtWidgets.QRadioButton(Form)
        self.arrow.setGeometry(QtCore.QRect(530, 10, 89, 16))
        self.arrow.setObjectName("arrow")
        self.line = QtWidgets.QRadioButton(Form)
        self.line.setGeometry(QtCore.QRect(430, 10, 89, 16))
        self.line.setObjectName("line")
        self.openimage = QtWidgets.QPushButton(Form)
        self.openimage.setGeometry(QtCore.QRect(70, 540, 101, 51))
        self.openimage.setObjectName("openimage")
        self.saveimage = QtWidgets.QPushButton(Form)
        self.saveimage.setGeometry(QtCore.QRect(200, 540, 111, 51))
        self.saveimage.setObjectName("saveimage")
        self.label_ = QtWidgets.QLabel(Form)
        self.label_.setGeometry(QtCore.QRect(600, 230, 241, 271))
        self.label_.setText("")
        self.label_.setObjectName("label_")

        self.retranslateUi(Form)
        self.circle.clicked.connect(Form.repaint)
        self.rectangle.clicked.connect(Form.repaint)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.circle.setText(_translate("Form", "Circle"))
        self.rectangle.setText(_translate("Form", "Rectangle"))
        self.triangle.setText(_translate("Form", "Triangle"))
        self.arrow.setText(_translate("Form", "Arrow"))
        self.line.setText(_translate("Form", "Line"))
        self.openimage.setText(_translate("Form", "打开图片"))
        self.saveimage.setText(_translate("Form", "保存图片"))

