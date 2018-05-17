
from IPy import IP
class Ruters(object):

    def __init__(self):
        # sid.n_pid1.hop1.status1.n_pid2.hop2.status2.n_pid3.hop3.status3
        self.ruters = [
                          # ruter1
                          [
                              [2, 1, 1, 0, 2, 2, 0, -1, -1, -1],
                              [3, 2, 2, 0, 1, 2, 0, -1, -1, -1],
                              [4, 2, 1, 0, 1, 2, 0, -1, -1, -1],
                          ],
                          # ruter2
                          [
                              [1, 4, 1, 0, 2, 2, 0, -1, -1, -1],
                              [3, 3, 1, 0, 2, 2, 0, -1, -1, -1],
                              [4, 2, 1, 0, 4, 2, 0, 3, 2, 0],
                          ],
                          # ruter3
                          [
                              [1, 4, 2, 0, 1, 2, 0, -1, -1, -1],
                              [2, 1, 1, 0, 4, 2, 0, -1, -1, -1],
                              [4, 4, 1, 0, 1, 2, 0, -1, -1, -1],
                          ],
                          # ruter4
                          [
                              [1, 3, 1, 0, 2, 2, 0, -1, -1, -1],
                              [2, 2, 1, 0, 4, 2, 0, 3, 2, 0],
                              [3, 4, 1, 0, 2, 2, 0, -1, -1, -1],
                          ]
                      ]


class Node(object):

    def __init__(self, _in_ruter_number, _in_ruter_port, _ip):
        self.in_ruter_number = _in_ruter_number
        self.in_ruter_port = _in_ruter_port
        self.ip = _ip
        self.trans_str = _ip
        self.network_ip = "192.168.*.*"
        self.ruter = Ruters()
        self.Lport = None
        self.a_b = "16/8"
        self.ruter_list = []
        self.port_table = [
            {"Lport": 65535, "sid": 1, "pid":3, "bandwidth": 622, "status": 0},
            {"Lport": 65535, "sid": 3, "pid":2, "bandwidth": 155, "status": 0},
            {"Lport": 3, "sid": 2, "pid":1, "bandwidth": 155, "status": 0},
            {"Lport": 3, "sid": 4, "pid":1, "bandwidth": 45, "status": 0},
            {"Lport": 5, "sid": 4, "pid":5, "bandwidth": 100, "status": 0},
            {"Lport": 5, "sid": 3, "pid":3, "bandwidth": 45, "status": 0},
        ]
        self.out_ruter_number = None
        self.out_ruter_port = None


    def Ruting(self):

        ##### 从IP地址中获取目标Lport
        ip_list = self.ip.split('.')
        self.Lport = int(ip_list[2])
        if int(ip_list[0]) == 192 and int(ip_list[1]) == 168:
            for item in self.port_table:
                if self.Lport == item["Lport"]:
                    self.out_ruter_number = item["sid"]
                    self.out_ruter_port = item["pid"]
                    break
            else:  #进入结点没有找到合适的信道，不予以处理
                print("没有找到合适的信道")
                return True
        else:
            self.Lport = self.port_table[0]["Lport"]
            self.out_ruter_number = self.port_table[0]["sid"]
            self.out_ruter_port = self.port_table[0]["pid"]

        print("Lport = ", self.Lport)
        print("sid = ", self.out_ruter_number)
        print("pid = ", self.out_ruter_port)


        ##### 封装
        self.trans_str = '.'.join([str(self.out_ruter_number),"0", str(self.out_ruter_port), "0"]) +"."+ self.trans_str
        print("ippacket = ", self.trans_str_to_01(self.trans_str))


        ##### 查询内部路由表
        for item1 in self.ruter.ruters[int(self.in_ruter_number) - 1]:
            # print(item1)
            if item1[0] == int(self.out_ruter_number):
                self.in_ruter_number = self.out_ruter_number
                self.in_ruter_port = self.out_ruter_port
                print("n_pid = ", item1[1])
            else:
                pass #　多于一跳，不去考虑


    ##### 点分十进制转换为01串
    def trans_str_to_01(self, str):
        if len(str.split('.')) == 5:
            return IP(str).strBin()
        else:
            sstr = str.split('.')
            str1 = '.'.join(sstr[0:4])
            str2 = '.'.join(sstr[4:8])
            # print(str1, str2)
            return IP(str1).strBin() + IP(str2).strBin()
