# -*- coding: utf-8 -*-
import matplotlib.pyplot  as pl
from numpy import *
### 二维向量的分类器，也就是，二维平面上点的分类
### TODO: 实现
class Mypoint(object):
    def __init__(self, _x, _y):
        self.x = _x
        self.y = _y

class Percrptro(object):
    def __init__(self, train_data):
        self.weight = array([0, 0])
        self.bias = 0
        self.step = 1
        self.train_data = train_data

    def percrptro(self):
        data_num = len(self.train_data)
        while True:
            classify_right = True
            for i in range(0, data_num):
                if self.train_data[i].y * (dot(self.weight, self.train_data[i].x) + self.bias) <= 0:
                    self.weight = self.weight + self.step * self.train_data[i].y * self.train_data[i].x # 数据规范
                    self.bias = self.bias + self.step * self.train_data[i].y
                    classify_right = False
                    break
            if classify_right == True:
                break
            print("w = ", self.weight, "b = ", self.bias)
        return # 返回即为该模型的参数 weight and bias

### 进行画图，更加的使人明了
data = [Mypoint(array([3, 3]), 1), Mypoint(array([4, 3]), 1), Mypoint(array([1, 1]), -1)]

classify = Percrptro(data)
classify.percrptro()
print (classify.weight, classify.bias)
for i in range(0, len(data)):
    if data[i].y == 1:
        pl.plot(data[i].x[0], data[i].x[1], 'o', c="r")
    else:
        pl.plot(data[i].x[0], data[i].x[1], 'o', c="b")
pl.plot(classify.weight)
pl.show()