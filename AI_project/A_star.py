
# -*- coding: utf-8 -*-

### A* 求解15数码问题
### 一些解释说明
### f(n) = g(n) + h(n)
### f(n)是评估函数 g(n)为从起始状态到当前状态的耗费
### h(n)为从当前状态到目标状态的预估耗费,也被称为启发函数
### h(n)定义为每个将牌与其目标位置之间最短距离的总和
from copy import  deepcopy

class Status(object):
    def __init__(self, _status):
        self.status = _status
        for i in range(4):
            for j in range(4):
                if self.status[i][j] == 0:
                    self.center = (i, j)
        self.f = 0 # 当前状态的评价函数值
        self.d = 0 # 从起始状态到当前状态的花费
        self.w = 0 # 从当前状态到目标状态的花费
        self.father_index_in_close_list = -1

    def change_legal(self, x, y):
        tempx = self.center[0] + x
        tempy = self.center[1] + y
        if tempx < 0 or tempx > 3 or tempy < 0 or tempy > 3:
            return "inlegal"
        else:
            self.status[self.center[0]][self.center[1]], self.status[tempx][tempy] =  self.status[tempx][tempy], self.status[self.center[0]][self.center[1]]
            self.center = (tempx, tempy)
            return "legal"

class AStar(object):
    dirct = [(-1, 0), (1, 0), (0, -1), (0, 1)] # up, down, left, right
    def __init__(self, _fromS, _endS):
        self.fromS = _fromS
        self.endS = _endS
        self.close_list = []
        self.open_list = []

    def compute_f(self, tempstatus):
        """ 假设 tempstatus.d 已知， 计算tempstatus.w，即可得tempstatus.f """
        for i in range(4):
            for j in range(4):
                for ii in range(4):
                    for jj in range(4):
                        if tempstatus.status[i][j] == self.endS.status[ii][jj]:
                            tempstatus.w += abs(i - ii) + abs(j - jj)
        tempstatus.f = tempstatus.d + tempstatus.w
        return tempstatus

    def find_min_f(self):
        """ 从 open_list 中寻找最小代价的结点， 并返回下标。"""
        min_f_idx = 0
        min_f = self.open_list[0].w
        for i in range(1, len(self.open_list)):
            if self.open_list[i].w < min_f:
                min_f_idx = i
                min_f = self.open_list[i].w
        return min_f_idx

    def in_list(self, St):
        """ 检查status 是否在open_list, close_list """
        for item in self.open_list:
            if item.status == St.status:
                return True
        for item in self.close_list:
            if item.status == St.status:
                return True
        return False

    def judge_end(self, St):
        for i in range(4):
            for j in range(4):
                if self.endS.status[i][j] != St.status[i][j]:
                    return False
        return True

    def Astar(self):
        """ A* 算法实现"""
        self.open_list.append(self.fromS)
        while len(self.open_list) != 0:
            min_idx = self.find_min_f()
            print("---- find index -----", min_idx)
            tempstatus = self.open_list.pop(min_idx)
            print("----- status ------", tempstatus.status)
            print("----- end status -----", self.endS.status)
            self.close_list.append(tempstatus)
            if self.judge_end(tempstatus):
                return self.close_list
            for i in range(4):
                # 进行状态转移， 空格的上下左右。
                extend_status = deepcopy(tempstatus)
                print("------ temp status -----", tempstatus.status, " ---> ", tempstatus.center)
                if extend_status.change_legal(self.dirct[i][0], self.dirct[i][1]) == "inlegal":
                    continue
                print("------ extent status -----", extend_status.status, " ---> ", extend_status.center)
                extend_status.d = tempstatus.d + 1
                extend_status.f = extend_status.w = 0
                extend_status = self.compute_f(extend_status)
                extend_status.father_index_in_close_list = len(self.close_list) - 1
                # print(" ----> index", extend_status.father_index_in_close_list)
                if self.in_list(extend_status) == False:
                    self.open_list.append(extend_status)
        return "no Solution!"

fromStatus = [
                [0, 1, 2, 3],
                [4, 5, 6, 7],
                [8, 9, 10, 11],
                [12, 13, 14, 15],
            ]

endStatus = [
                [0, 2, 1, 3],
                [5, 4, 6, 7],
                [8, 9, 10, 11],
                [12, 13, 14, 15],
            ]

astar = AStar(Status(fromStatus), Status(endStatus))
answer = astar.Astar()
if answer == "no Solution!":
    print (answer)
else:
    ###　solution
    print("solution :")
    step_num = 1
    step_idx = len(answer) - 1
    end_stack = []
    while step_idx != -1:
        end_stack.append(answer[step_idx])
        step_idx = answer[step_idx].father_index_in_close_list
    while len(end_stack) != 0:
        for item in end_stack.pop().status:
            print(item)
        if len(end_stack) != 0:
            print("----->step %s :"% step_num)
        step_num += 1
    print("end")