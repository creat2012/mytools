#! -*- coding:utf-8 -*-
import numpy as np
import pandas as pd
from scipy import stats
from statsmodels.formula.api import ols
from statsmodels.stats.anova import anova_lm
import matplotlib.pyplot as plt

wage_data = pd.read_excel("./wage_data1.xlsx", header=[1])
# print(wage_data["health"], wage_data["wage"])
columns = ["age", "maritl",	"race",	"education", "jobclass",	"health", "health_ins"]
sigle = "wage ~ C(year)+C(age)+C(maritl)+C(race)+C(education)+C(region)+C(jobclass)+C(health)+C(health_ins)"
double = ["wage~C(health):C(health_ins)"]
for i in range(0, len(columns)):
    for j in range(i + 1, len(columns)):
        str_ = "wage~C(" + columns[i] + "):C(" + columns[j] +")"
        result = anova_lm(ols(str_, wage_data).fit())
        print(result)
"""
for col in columns:
    g = wage_data[col].unique()
    print(col + " :" + str(len(g)))
    #print(g)
    #args = []
    #for i in list(g):
    #    args.append(wage_data[wage_data[col] == i]['wage'])
    #f, p = stats.f_oneway(*args)
    #print(f,p)
    
    print(result)
    print("=====================")
# 进行方差齐性检验， 是否需要？
# w, pp = stats.levene(*args)
# if pp < 0.05:
#    print(pp)
#    print ("warning...")
"""