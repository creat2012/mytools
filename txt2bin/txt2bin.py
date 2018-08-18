# -*- coding:utf-8 -*-
# this script is for transform *.txt to *.bin
# in my use, i transfrom the double(4bit) point to half(2bit) point (bin)
# in my txt, the double is lines to lines
# the out.bin is the result bin file in your work dir
import numpy as np
import logging
import os
logging.basicConfig(level=logging.INFO	,
                    format='%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s') 

class Txt2bin(object):
	def __init__(self, txt_path):
		self.txt_path_ = txt_path
		if not os.path.exists(self.txt_path_):
			logging.info("*.txt file is not found :)")

	def trans(self):
		file_txt = open(self.txt_path_)
		file_data = file_txt.readlines() # in your txt , double point number is line by line
		lines = 0
		data = []
		for item in file_data:
			try:
				data.append(float(item))
			except ValueError:
				logging.error("your data is not all double :)")
			lines += 1
			if lines % 1000 == 0:
				logging.info("readed %d double point number :)" % (lines))
		logging.info("total readed %d double point number :)" % (lines))
		data = np.array(data)
		data.astype(np.float16).tofile("./out.bin") # out.bin is the bin file you transformed
		logging.info("done for to out.bin :)")

if __name__ == '__main__':
	trans = Txt2bin("./in.txt") # in.txt is your txt file will to transform
	trans.trans()