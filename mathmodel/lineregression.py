#! -*- coding:utf-8 -*-
from sklearn.model_selection import train_test_split
import numpy as np
import pandas as pd
from scipy import stats
from statsmodels.formula.api import ols
from statsmodels.stats.anova import anova_lm
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression


wage_data = pd.read_excel("./wage_data1.xlsx", header=[1])

y = wage_data["wage"]

del wage_data["ID"]
del wage_data["year"]
del wage_data["region"]
#del wage_data["maritl"]
#del wage_data["race"]
#del wage_data["age"]
#del wage_data["health"]
del wage_data["logwage"]
del wage_data["wage"]
train_X,test_X, train_y, test_y = train_test_split(wage_data,
                                                   y,
                                                   test_size = 0.2,
                                                   random_state = 0)
print(train_X, train_y)
model = LinearRegression()
model.fit(train_X, train_y)
print(model.coef_)
feature_cols = train_X.head()
for item in zip(feature_cols, model.coef_):
    print(item)


print('the mean sqare error:%.2f' %np.mean((model.predict(test_X)-test_y)**2))
print('mean_absolute_error: %.2f'%np.mean(model.predict(test_X)-test_y))
print('Variance score:%f' %model.score(test_X, test_y))
#predictions = model.predict(test_X)
#print(predictions)
#print(test_y)
#for item in zip(predictions, test_y):
#    print(item)
#for i in range(0,len(predictions)):
#   print('Predicted: %s, Target: %s' % (predictions[i], test_y[i]))
# delete ID the mean sqare error:1483.35 Variance score:0.28
# delete year the mean sqare error:1483.35 Variance score:0.28