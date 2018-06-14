# -*- coding:utf-8 -*-
#
from bjut_network import config, bjut_network
"""
if config.USERNAME == "" or config.PASSWD == "":
    print ("第一次登录，请配置你的账号和密码：")
    config.USERNAME = input("请输入你的账号：")
    config.PASSWD = input("请输入你的密码：")
"""

config.USERNAME = ""
config.PASSWD = ""

net = bjut_network.bjut_network("your count", "your password")
net.run()
