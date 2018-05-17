#! -*- coding:utf-8 -*-
import openpyxl
import numpy as np
import matplotlib.pyplot as plt
from sklearn import linear_model
wage_file = openpyxl.load_workbook('./wage_data.xlsx')
sheet_name = wage_file.sheetnames[0] # 只有一个sheet

sheet = wage_file.get_sheet_by_name(sheet_name)
id_set = set()
columns = "ABCDEFGHIJKL"

for col in columns:
    _set = set()
    for row in sheet[col][2:]:
        _set.add(row.value)
    print(
        col,
        str(sheet[col][1].value) + ":" + str(len(_set))
    )

    if col in "BCDEFGHIJ":
        print(_set)

age = []
wage = []
for row in list(sheet.rows)[2:]:
    print(
        row[2].value,
        row[11].value
    )
    age.append(int(row[2].value))
    wage.append(row[11].value)

regr = linear_model.LinearRegression()
regr.fit(age, wage)
# 画图
plt.scatter(age, wage)
plt.plot(age, regr.predict(age), color="red")
plt.xticks()
plt.yticks()
plt.show()



np_age = np.array(age)
np_wage = np.array(wage)
np_age.max()