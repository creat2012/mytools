# -*- coding: utf-8 -*-
### 遗传算法求解旅行商
import itertools
import random

class Graph(object):
    def __init__(self, _num, _graph):
        self.node_num = _num
        self.graph = _graph # 用邻接矩阵进行存储图

    def print_graph(self):
        print("node_num = ", self.node_num)
        for i in range(0, self.node_num):
            print(self.graph[i])
        print("---------------")

class Solution(object):
    def __init__(self, _graph, _solution):
        self.solution = _solution
        self.solution_fitness = 0
        self.graph = _graph
        self.choose_p = 0

    def fitness(self):
        self.solution_fitness = 0
        # print(self.solution)
        from_index = self.solution[0]
        for end_index in range(1, self.graph.node_num):
            self.solution_fitness += self.graph.graph[self.solution[from_index]][self.solution[end_index]]
            from_index = end_index
        self.solution_fitness += self.graph.graph[self.solution[end_index]][self.solution[0]]

class TSP_GA(object):

    ## 进行初始化参数
    P_VARIATION = 0.1  # 变异概率
    P_COPULATION = 0.8  # 交配概率
    ITER_NUM = 100
    INIT_NUM = 5
    def __init__(self, _graph):
        self.graph = _graph
        self.solutions = []
        self.best_solution = None
        # 随机初始种群
        templist = list(range(0, self.graph.node_num))
        for i in range(0, self.INIT_NUM):
            # print(list(range(0, self.graph.node_num)))
            random.shuffle(templist)
            tempsoluton = Solution(self.graph, templist)
            tempsoluton.fitness()
            self.solutions.append(tempsoluton)
    ## 个体概率更新
    def update_p(self):
        sum_p = 0
        for i in range(0, len(self.solutions)):
            sum_p += self.solutions[i].solution_fitness
        for i in range(0, len(self.solutions)):
            self.solutions[i].choose_p = self.solutions[i].solution_fitness / sum_p
        return "update p"

    ## 选择
    ## 轮盘赌选择
    def choose(self):
        random_p = random.random()
        sum_p = 0
        for i in range(0, len(self.solutions)):
            sum_p += self.solutions[i].choose_p
            if sum_p > random_p:
                return i
        return "fail for choose"


    ## 交配
    ## 采用常规的交配方法
    ## 当然也可以使用其他交配方法
    def copulation(self, father, mother):
        index = random.randint(0, self.graph.node_num - 1)  #产生交配位
        son1 = father
        son2 = mother
        for i in range(index, self.graph.node_num):
            for j in range(0, self.graph.node_num):
                if mother.solution[j] not in son1.solution[:i]:
                    son1.solution[i] = mother.solution[j]
                    break

        for i in range(index, self.graph.node_num):
            for j in range(0, self.graph.node_num):
                if father.solution[j] not in son2.solution[:i]:
                    son2.solution[i] = father.solution[j]
                    break
        return (son1, son2)


    ## 变异
    ## 基于次序的变异， 随机产生两个变异位，交换即可
    def variation(self, gene):
        index1 = random.randint(0, self.graph.node_num - 1)
        index2 = random.randint(0, self.graph.node_num - 1)
        gene.solution[index1], gene.solution[index2] = gene.solution[index2], gene.solution[index1]
        return gene

    ## 遗传算法实现
    def GA(self):
        while self.ITER_NUM:
            # 个体概率更新
            self.update_p()
            # 交配
            if random.random() < self.P_COPULATION:
                father_index = self.choose()
                mother_index = self.choose()
                if father_index == mother_index: # 随机化两个交叉个体一样
                    pass
                self.copulation(self.solutions[father_index], self.solutions[mother_index])
            # 变异
            if random.random() < self.P_VARIATION:
                index = self.choose()
                self.solutions[index] = self.variation(self.solutions[index])

            self.ITER_NUM -= 1
            # 最优解决方案
            temp_solution = self.solutions[0]
            for i in range(1, len(self.solutions)):
                if self.solutions[i].solution_fitness < temp_solution.solution_fitness:
                    temp_solution = self.solutions[i]
            self.best_solution = temp_solution
        return self.best_solution

def random_graph(node_num):
    array_2 = []
    for i in range(node_num):
        array_1 = []
        for j in range(node_num):
            array_1.append(random.randint(1, 10))
        array_2.append(array_1)
    return Graph(node_num, array_2)

tsp = TSP_GA(random_graph(5))
tsp.graph.print_graph()
print ("solution: ", tsp.GA().solution)

"""
    还存在的问题：验证算法正确性。
"""