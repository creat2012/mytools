import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
import re
from fake_useragent import  UserAgent

""" 
    这里，我把自己写的爬虫写成了一个MySpider类。 
    1，用set作为url管理器，new_urls就是待爬取页面的url，而old_urls就是爬取过页面的url 
    2，url_downloader()就是页面下载器。给一个URL，下载来其页面的html/xml。 
    3，page_resolver()就是页面解析器。给一段html/xml字符串，来解析出来有用的信息。 
"""


class MySpider(object):
    new_urls = set()
    old_urls = set()

    def __init__(self, root_url):
        self.new_urls.add(root_url)

    def url_downloader(self, url):
        req = urllib.request.Request(url)
        req.add_header("User-Agent", UserAgent().random)
        req.add_header("GET", url)
        req.add_header("Host", "acm.nyist.net")
        # req.add_header("Referer", "http://acm.nyist.net/JudgeOnline/problemset.php")
        """ 
            对于Request.header的创建，可以通过你自己的浏览器进行看出有用的信息。 
            Host: acm.nyist.net 
            User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:50.0) Gecko/20100101 Firefox/50.0 
            Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8 
            Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3 
            Accept-Encoding: gzip, deflate 
            Cookie: __utma=1.777807425.1476802115.1485247339.1485251033.16; __utmz=1.1476802115.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); _gscu_771983383=7991431907sfcl37; PHPSESSID=1e816be3352a5e380b670153ccb7f0bd; __utmc=1 
            Connection: keep-alive 
            Upgrade-Insecure-Requests: 1 
            Cache-Control: max-age=0 
        """
        response = urllib.request.urlopen(req)
        return response.read()

    def page_resolver(self, page_content):
        # BeautifulSoup 是一个解析器的工具。
        soup = BeautifulSoup(page_content, 'html.parser', from_encoding='utf-8')
        problem = soup.find_all('a', href=re.compile(r'problem\.php\?pid=\d+'))
        _file = open('problem.txt', 'a+')
        for item in problem:
            print(item.get_text(), file=_file)
        _file.close()
        page_url = soup.find_all('a', href=re.compile(r'\?page=\d+'))
        print(page_url)
        for item in page_url:
            newurl = item['href']
            newfullurl = urllib.parse.urljoin("http://acm.nyist.net/JudgeOnline/problemset.php", newurl)
            if newfullurl not in self.new_urls and newfullurl not in self.old_urls:
                self.new_urls.add(newfullurl)

                #  crewl 用来调度爬虫，也作为的爬虫的一部分。

    def crewl(self):
        while len(self.new_urls):
            url = self.new_urls.pop()
            self.old_urls.add(url)
            page = self.url_downloader(url)
            self.page_resolver(page)


initurl = "http://acm.nyist.net/JudgeOnline/problemset.php"
spider = MySpider(initurl)
spider.crewl()