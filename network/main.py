
from ruter import Ruters, Node

in_ruter_id = input("请输入接收到数据的交换机号：")
in_ruter_port = input("请输入端口号：")
ip = input("请输入目的IP：")
node = Node(in_ruter_id, in_ruter_port, ip)
node.Ruting()
