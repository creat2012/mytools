#! -*- coding:utf-8 -*-

# 专门针对imagenet 2012年数据集进行数据提取

import os
import shutil
# 原来imagenet的文件位置
Train_path = "G:/数据集/imagenet/ILSVRC2012_img_train"
Val_path = "G:/数据集/imagenet/ILSVRC2012_img_val"
Train_labeL_path = "G:/数据集/imagenet/train.txt"
Val_label_path = "G:/数据集/imagenet/val.txt"
print ("imagenet1000 path\ntrain path : %s\nval path : %s\ntrain file %s\nval file %s"%(Train_path, Val_path, Train_labeL_path, Val_label_path))
# 需要提取文件总数类别
class_num = 15
print ("you need %d classes..." % class_num)
# 文件位置
Aim_train_path = Train_path + str(class_num)
Aim_val_path = Val_path + str(class_num)
Aim_train_label_path = Train_labeL_path + str(class_num)
Aim_val_label_path = Val_label_path + str(class_num)
print ("imagenet%d path\ntrain path : %s\nval path : %s\ntrain file %s\nval file %s"% (class_num, Aim_train_path, Aim_val_path, Aim_train_label_path, Aim_val_label_path))
if os.path.exists(Aim_train_path):
    shutil.rmtree(Aim_train_path)
os.mkdir(Aim_train_path)
if os.path.exists(Aim_val_path):
    shutil.rmtree(Aim_val_path)
os.mkdir(Aim_val_path)
aim_train_label_file = open(Aim_train_label_path, "w")
aim_val_label_file = open(Aim_val_label_path, "w")
train_tar_files = os.listdir(Train_path)[:class_num]
val_files = os.listdir(Val_path)
train_synset = []
train_synset_class = []

## 训练数据提取
for item in train_tar_files:
    print(item)
    shutil.copyfile(Train_path + "/" + item, Aim_train_path + "/" + item)
    synset_name = item.split('.')[0]
    train_synset.append(synset_name)
## 训练数据label提取
with open(Train_labeL_path, "r") as train_labels:
    labels = train_labels.readlines()
    for label in labels:
        if label.split('/')[0] in train_synset:
            aim_train_label_file.write(label)
            name, _class = label.split(' ')
            print (_class)
            _class = int(_class)
            if _class not in train_synset_class:
                train_synset_class.append(_class)
print ("the class number is ", train_synset_class)
## 验证数据label提取
val_files_name = []
with open(Val_label_path, "r") as val_labels:
    labels = val_labels.readlines()
    for label in labels:
        name, _class = label.split(' ')
        _class = int(_class)
        if _class in train_synset_class:
            aim_val_label_file.write(label)
            val_files_name.append(name)
## 验证数据提取
for item in val_files:
    if item in val_files_name:
        shutil.copyfile(Val_path + "/" + item, Aim_val_path + "/" + item)

print("processed")