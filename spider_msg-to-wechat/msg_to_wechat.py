import itchat

def send_msg_wechat(msg):
    itchat.auto_login(hotReload=True)
    itchat.send(msg, toUserName='filehelper')
