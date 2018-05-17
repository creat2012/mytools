# -*- coding: utf-8 -*-

from numpy import *
import  matplotlib.pyplot as pl
### 带类中心的组
class Myclass(object):
    def __init__(self, _center):
        self.center = _center
        self.group = []

    def update_center(self):
        sum_x = 0
        sum_y = 0
        num = len(self.group)
        for i in range(0, num):
            sum_x += self.group[i][0]
            sum_y += self.group[i][1]
        self.center = (sum_x / num, sum_y / num)

class KMeans(object):
    def __init__(self, _data, _k):
        self.data = _data
        self.k = _k
        self.k_class = []

    def k_means(self):
        for i in range(0, self.k):
            self.k_class.append(Myclass(self.data[i]))
        data_num = len(self.data)
        while True:
            ## 归类
            classify_right = True
            for i in range(0, data_num):
                min_idx = -1
                min_dis = 0xfffff
                for k in range(0, self.k):
                    dis = dot(self.data[i] - self.k_class[k].center, self.data[i] - self.k_class[k].center)
                    if dis < min_dis:
                        min_dis = dis
                        min_idx = k
                print("min_idx", min_idx)
                for k in range(0, self.k):
                    del_index = -1
                    for j in range(0, len(self.k_class[k].group)):
                        if (self.data[i] - self.k_class[k].group[j]).any() == False:
                            del_index = j
                            break
                    print("del_index = ", del_index, ", k = ", k, ", min_idx = ", min_idx)
                    if del_index != -1: #在k类别下找到
                        if  k != min_idx:
                            del self.k_class[k].group[del_index]
                            self.k_class[min_idx].group.append(self.data[i])
                            classify_right = False
                        break
                else:
                    self.k_class[min_idx].group.append(self.data[i])
                    classify_right = False
            ## 更新类中心
            for k in range(0, self.k):
                if k == 0:
                    col = "s"
                elif k == 1:
                    col = "o"
                else:
                    col = "v"
                print("center", self.k_class[k].center, "--->", self.k_class[k].group)
                num = len(k_mean.k_class[k].group)
                pl.scatter(self.k_class[k].center[0], self.k_class[k].center[1], s=100, marker=col, c="k")
                for i in range(0, num):
                    pl.scatter(self.k_class[k].group[i][0], self.k_class[k].group[i][1], marker=col, c="k")
                self.k_class[k].update_center()
            pl.show()
            if classify_right == True:
                break
### TODO:数据的生成
data = []
data_file = open("testSet2.txt", "r")
lines = data_file.readlines()
for line in lines:
    item = line.split('\t')
    data.append(array([float(item[0]), float(item[1])]))
print(data)
k_mean = KMeans(data, 3)
k_mean.k_means()
"""
print(k_mean.k_class)
for k in range(0, 3):
    if k == 0: col = "r"
    elif k == 1: col = "b"
    else: col = "y"
    for i in range(0, len(k_mean.k_class[k].group)):
        pl.plot(k_mean.k_class[k].center[0], k_mean.k_class[k].center[1], 's', c=col)
        pl.plot(k_mean.k_class[k].group[i][0], k_mean.k_class[k].group[i][1], 'o', c=col)
pl.show()
"""