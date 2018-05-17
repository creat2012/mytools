from math import *

"""
    构造 对一元二次方程进行求解 的类
"""

class Poly:
    def __init__(self, _a, _b, _c):
        """ 构造函数， 进行对一元二次方程的构造 """
        self.__a = _a
        self.__b = _b
        self.__c = _c
        self.__x1 = None
        self.__x2 = None

    
    def get_answer(self):
        """
            对一元二次方程进行求解
            返回：一元二次方程的解
        """
        bb_4ac = self.__b * self.__b -   4 * self.__a * self.__c
        if  bb_4ac >= 0: # 实数根
            self.__x1 = (-self.__b + sqrt(bb_4ac)) / 2 * self.__a
            self.__x2 = (-self.__b - sqrt(bb_4ac)) / 2 * self.__a
        else : # bb_4ac < 0  复数根
            self.__x1 = complex(-self.__b / 2 * self.__a , -(sqrt(-bb_4ac)) / 2 * self.__a)
            self.__x2 = complex(-self.__b / 2 * self.__a , +(sqrt(-bb_4ac)) / 2 * self.__a)
        return (self.__x1, self.__x2)
