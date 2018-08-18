# -*- coding:utf-8 -*-
# this script is for transform *.npy to *.bin
# in my use, i transfrom the double(4bit) point to half(2bit) point (bin)
# the out.bin is the result bin file in your work dir
import numpy as np
import logging
import os
logging.basicConfig(level=logging.INFO	,
                    format='%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s') 

class Npy2bin(object):
	def __init__(self, npy_path):
		self.npy_path_ = npy_path
		if not os.path.exists(self.npy_path_):
			logging.info("*.npy file is not found :)")

	def trans(self):
		data = np.load(self.npy_path_)
		data = np.array(data)
		data.astype(np.float16).tofile("roi0.bin")
		logging.info("done for to out.bin :)")

if __name__ == '__main__':
    trans = Npy2bin("./rois_data.npy") # in.txt is your txt file will to transform
    trans.trans()
