
import numpy as np


roi = np.load("./rois_data.npy")
roi = np.array([roi[0][1:]]) # index 0 roi
roi.astype(np.float16).tofile("roi0.bin")
for item in roi:
    print(item)
print ("=========================")



features = np.load("./conv5_3_data.npy")
print ("shape ", features.shape)
feature = np.array([features[0][500], features[0][511]])# the last channel
feature = feature.transpose(1, 2, 0)
feature.astype(np.float16).tofile("feature0_500511.bin")
cout = 0;
for _ in feature:
    for __ in _:
        for item in __:
            print(cout, item)
            cout += 1
print("==============================")

cout = 0
pooled_features = np.load("./pool5_data.npy")
"""
print ("shape :", pooled_features.shape)
pooled_feature = np.array([pooled_features[0][500], pooled_features[0][511], pooled_features[1][500], pooled_features[1][511]]) # index 0 roi - last channel
print ("mid shape :", pooled_feature.shape)
#pooled_feature = pooled_feature.transpose(1, 2, 0)
pooled_feature  = pooled_feature.reshape((4 * 7 * 7))
#pooled_feature.astype(np.float16).tofile("roi0.bin")
print ("shaped :", pooled_feature.shape)
cout = 0
for _ in pooled_feature:
    print(cout, _)
    cout += 1
"""
roi_index = 0
channel_index = 511
for _ in pooled_features[roi_index][channel_index]:
    for __ in _:
        print (__)
print ("---------------------")
