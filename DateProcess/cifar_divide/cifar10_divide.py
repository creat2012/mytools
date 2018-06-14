# this script is for divide cifar10 into 100 object(for self-supervised learning)
#!/usr/bin python
import pickle
import tarfile
import os
import numpy as np
from PIL import Image

DATA_PATH = "/media/xb409/7CEEE9EBEEE99DA0/zhangkc/caffe/data/cifar10/"
CIFAR10 = DATA_PATH + "cifar-10-python.tar.gz"


def unpickle(file):
    with open(file, 'rb') as fo:
        dict = pickle.load(fo)
    # type(dict[b'data']) == numpy.array, type(dict[b'labels']) == list
    return dict['data'].reshape(10000, 3, 32, 32), np.array(dict['labels'])


def un_tar_gz(filename):
    targz = tarfile.open(filename)
    if os.path.exists(DATA_PATH + "cifar-10-python") == False:
        targz.extractall(path = DATA_PATH + "cifar-10-python")

if __name__ == "__main__":
    try:
        print ("unzip ...")
        un_tar_gz(CIFAR10)
        print ("unzip done ...")
    except Exception as e:
        print("some exception : %s"% e)
    # change every image into object , dir name is object_id(id is 0 - 99)
    # make dir for the divided data    
    if os.path.exists(DATA_PATH + "experiment/") == False:
        os.mkdir(DATA_PATH + "experiment/")
    for i in range(100):
        if os.path.exists(DATA_PATH + "experiment/object_" + str(i)) == False:
            os.mkdir(DATA_PATH + "experiment/object_" + str(i))

    object_cnt = [0] * 100
    for batch_num in range(1, 6):
        print ("dividing data batch %d" % batch_num)
        X, Y = unpickle(DATA_PATH + "cifar-10-python/cifar-10-batches-py/data_batch_" + str(batch_num))
        for i in range(X.shape[0]):
            imgs = X[i]
            img0 = imgs[0]
            img1 = imgs[1]
            img2 = imgs[2]
            img_r = Image.fromarray(img0)
            img_g = Image.fromarray(img1)
            img_b = Image.fromarray(img2)
            img = Image.merge("RGB", (img_r, img_g, img_b))
        
            # get the image's object_id
            object_id = Y[i]
            while object_cnt[object_id] == 500:
                object_id += 10
        
            img_name = str(object_cnt[object_id]) + ".png"
            object_cnt[object_id] += 1
            img.save(DATA_PATH + "experiment/object_" + str(object_id) + "/" + img_name, "png")
        print ("done for data batch %d" % (batch_num))
    print ("Done.")
