import matplotlib.pyplot as plt
import numpy as np
from numpy.random import randn
"""
    fig1 = plt.figure()
    ax1 = fig1.add_subplot(2, 2, 1)
    # add_subplot 返回的是AxesSubplot对象。
    ax2 = fig1.add_subplot(2, 2, 2)
    ax3 = fig1.add_subplot(2, 2, 3)
    ax4 = fig1.add_subplot(2, 2, 4)
    
    ax1.hist(randn(100), bins=20, color='k', alpha=0.3)
    
    ax2.plot(randn(50).cumsum(), 'k--')
    plt.show()

fig, axes = plt.subplots(2, 2)
axes[0, 0].hist(randn(100), bins=20, color='k', alpha=0.3)
axes[0, 1].plot(randn(50).cumsum(), 'b-')
plt.subplots_adjust(wspace=0, hspace=0)
plt.show()
"""

fig, axe = plt.subplots(1, 1)
data_file = open("./accuracy.txt", "r")
data_in_file = data_file.readlines()
data_x = []
data_y = []
for item in data_in_file[1:]:
    x, y =  int(item.split()[0]), float(item.split()[2])
    data_x.append(x)
    data_y.append(y)
data = np.array([data_x, data_y])
plt.plot(data_x, data_y, 'r-')
plt.show()