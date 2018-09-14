# -*- coding:utf-8 -*-
# this script is for transform *.npy to *.bin
# in my use, i transfrom the double(4bit) point to half(2bit) point (bin)
# the out.bin is the result bin file in your work dir
import numpy as np
import logging
import os
import sys
logging.basicConfig(level=logging.INFO	,
                    format='%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s') 

class Npy2bin(object):
	def __init__(self, npy_path, bin_file):
		self.npy_path_ = npy_path
		self.bin_file_ = bin_file
		if not os.path.exists(self.npy_path_):
			logging.info("*.npy file is not found :)")

	def trans(self):
		data = np.load(self.npy_path_)
		data = np.array(data)
		data.astype(np.float16).tofile(self.bin_file_)
		logging.info("done for to %s :)"%(self.bin_file_))

if __name__ == '__main__':
	if len(sys.argv) <= 1:
		logging.error("please appoint the file you will transform in command line!\n")
	else:
		npy_file = sys.argv[1]
		bin_file = sys.argv[2]
		trans = Npy2bin(npy_file, bin_file) # in.txt is your txt file will to transform
		trans.trans()
