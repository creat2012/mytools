#! -*- coding:utf-8 -*-
import numpy as np
import pandas as pd
from sklearn.decomposition import PCA

wage_data = pd.read_excel("./wage_data.xlsx", header=[1])

pca = PCA(n_components='mle')
pca.fit(wage_data)

print(pca.explained_variance_ratio_)