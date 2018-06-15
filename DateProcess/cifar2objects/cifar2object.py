# this script is for divide cifar into object
#!/usr/bin python
import pickle
import tarfile
import os
import logging
import numpy as np
from PIL import Image

logging.basicConfig(level=logging.INFO, format = '%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s') 

class Cifar2Object(object):
    "this class is to transform the cifar to some object"
    def __init__(self, cifar, objects, object_num):
        self.cifar = cifar
        self.objects = objects
        self.object_num = object_num
    
    def un_tar_gz(self, _file):
        logging.info("untar %s begin."%_file)
        try:
            targz = tarfile.open(_file)
            if os.path.exists(self.objects + "cifar-10-python") == False:
                targz.extractall(path = self.objects + "cifar-10-python")
        except Exception as e:
            logging.error(str(e))
        logging.info("untar %s end."%_file)

    def unpickle(self, _file):
        logging.info("unpickle %s begin."%_file)
        with open(_file, 'rb') as f:
            data = pickle.load(f)
        # type(dict[b'data']) == numpy.array, type(dict[b'labels']) == list
        logging.info("unpickle %s end."%_file)
        return data['data'].reshape(10000, 3, 32, 32), np.array(data['labels'])
    
    def mkobjects(self, object_num):
        logging.info("begin make objects' dir")
        if os.path.exists(self.objects + "objects/") == False:
            os.mkdir(self.objects + "objects/")
        for i in range(object_num):
            if os.path.exists(self.objects + "objects/object_" + str(i)) == False:
                os.mkdir(self.objects + "objects/object_" + str(i))
        logging.info("end make objects' dir")
        
    
    def divide(self):
        logging.info("devide begin")
        # 1. unzip
        self.un_tar_gz(self.cifar)
        # 2. mkdir
        self.mkobjects(self.object_num)
        # 3. divide
        object_cnt = [0] * self.object_num
        for batch_num in range(1, 6):
            logging.info("dividing data batch %d" % batch_num)
            X, Y = self.unpickle(self.objects + "cifar-10-python/cifar-10-batches-py/data_batch_" + str(batch_num))
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
                while object_cnt[object_id] == 50000 / self.object_num:
                    object_id += 10
                img_name = str(object_cnt[object_id]) + ".png"
                object_cnt[object_id] += 1
                img.save(self.objects + "objects/object_" + str(object_id) + "/" + img_name, "png")
            logging.info("done for data batch %d" % (batch_num))
        logging.info("devide end")
        
    
if __name__ == "__main__":
    ROOT = "#"
    cifar_path = ROOT + "/cifar-10-python.tar.gz"
    objects_path = ROOT
    object_num = 500
    c2o = Cifar2Object(cifar_path, objects_path, object_num)
    c2o.divide()

