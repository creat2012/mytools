
import numpy as np


file_txt = open("./out.txt")
file_data = file_txt.readlines()
data = []
lines = 0
for item in file_data:
    lines += 1
    data.append(float(item))
data = np.array(data)
data.astype(np.float16).tofile("out.bin")
for i in range(169):
    print (i, data[i])
print ("=========================")
