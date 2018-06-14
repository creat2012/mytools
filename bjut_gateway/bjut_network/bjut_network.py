# -*- coding:utf-8 -*-

import urllib.request
import urllib.parse
import http.cookiejar


class bjut_network(object):
    def __init__(self, str1, str2):
        self.username = str1
        self.passwd = str2
        # wlan config
        self.wlan_headers = {
            "Host": "wlgn.bjut.edu.cn",
            "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3",
            "Accept-Encoding": "gzip, deflate, br",
            "Content-Type": "application/x-www-form-urlencoded",
            "Referer": "https://wlgn.bjut.edu.cn/",
            "Upgrade-Insecure-Requests": "1",
        }
        self.wlan_postdata = {
            "DDDDD": self.username,  # your account
            "upass": self.passwd,  # your password
            "6MKKey": "123",
        }
        # 登录首页
        self.wlan_hosturl = 'https://wlgn.bjut.edu.cn'
        # 发送数据页面，登录跳转页面
        self.wlan_posturl = 'https://wlgn.bjut.edu.cn'  # 从数据包中分析出，处理post请求的url

        # wired config
        self.wired_headers = {
            "Host": "lgn.bjut.edu.cn",
            "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3",
            "Accept-Encoding": "gzip, deflate, br",
            "Content-Type": "application/x-www-form-urlencoded",
            "Referer": "https://lgn.bjut.edu.cn/",
            "Connection": "close",
            "Content-Length": "71",
            "Upgrade-Insecure-Requests": "1",
        }
        self.wired_postdata = {
            "DDDDD": self.username,  # your account
            "upass": self.passwd,  # your password
            "v46s": "1",
            "v6ip": "",
            "f4serip": "172.30.201.2",
            "0MKKey": "",
        }
        # 登录首页
        self.wired_hosturl = 'https://lgn.bjut.edu.cn/'
        # 发送数据页面，登录跳转页面
        self.wired_posturl = 'https://lgn.bjut.edu.cn/'  # 从数据包中分析出，处理post请求的url

    def run(self):
        ###
        cj = http.cookiejar.LWPCookieJar()
        cookie_support = urllib.request.HTTPCookieProcessor(cj)
        opener = urllib.request.build_opener(cookie_support, urllib.request.HTTPHandler)
        urllib.request.install_opener(opener)
        ###
        page = urllib.request.urlopen("https://lgn.bjut.edu.cn/")
        print (page.read())

        ###
        self.wired_postdata = urllib.parse.urlencode(self.wired_postdata).encode(encoding='UTF8')
        request = urllib.request.Request(self.wired_posturl, self.wired_postdata, self.wired_headers)
        response = urllib.request.urlopen(request)
        text = response.read()
        print(text)
