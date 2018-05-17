from PyQt5.QtWidgets import  QMainWindow, QApplication, QMessageBox, QFileDialog,QVBoxLayout, QCheckBox,QLabel, QTableWidgetItem
from Auc_UI import Ui_MainWindow
import sys
from Auction import Auction, Good
"""点击按钮，在控制台输出helloworld"""

class mywindow(QMainWindow, Ui_MainWindow):
    def __init__(self):
        super(mywindow, self).__init__()
        self.setupUi(self)
        self.auction = Auction()
        self.entrust.clicked.connect(self.Entrust)
        self.auction_button.clicked.connect(self.choose_good)
        self.bid_button.clicked.connect(self.Bid)
        self.end_button.clicked.connect(self.End_bid)


    def Entrust(self):
        print(self.trustee.text())
        print(self.info.toPlainText())
        print(self.lowest_price.text())
        good = Good(self.trustee.text(), self.info.toPlainText(), int(self.lowest_price.text()))
        self.auction.add_good(good)
        self.goods_table.setColumnCount(3)
        self.goods_table.setRowCount(len(self.auction.goods))
        self.goods_table.setHorizontalHeaderLabels(['委托人', '物品信息', '保留价'])
        for i in range(0, self.auction.get_good_num()):
            self.goods_table.setItem(i, 0, QTableWidgetItem(self.auction.goods[i].trustee))
            self.goods_table.setItem(i, 1, QTableWidgetItem(self.auction.goods[i].info))
            self.goods_table.setItem(i, 2, QTableWidgetItem(str(self.auction.goods[i].lowest_price)))
        self.trustee.setText("")
        self.info.setText("")
        self.lowest_price.setText("")


    def choose_good(self):
        print(" ----- in choose good ----- ")
        print(len(self.goods_table.selectedItems()))
        _good_info = self.goods_table.selectedItems()[1]
        _price = self.goods_table.selectedItems()[2]
        #print(self.goods_table.selectedItems.row())
        #print(_price)
        self.auction.set_on_auction_good(_good_info.row())
        self.on_auction.setColumnCount(2)
        self.on_auction.setRowCount(1)
        self.on_auction.setHorizontalHeaderLabels(['物品信息', '保留价'])
        self.on_auction.setItem(0, 0, QTableWidgetItem(_good_info))
        self.on_auction.setItem(0, 1, QTableWidgetItem(_price))

    def Bid(self):
        self.bid_info.setText("最高价出价人：" + str(self.auction.highest_owner) + " 最高出价：" + str(self.auction.highest_price))
        self.auction.Bid((self.bidder.text(), int(self.bid_price.text())))
        print(self.bidder.text(), self.bid_price.text())
        self.bidder.setText("")
        self.bid_price.setText("")
        self.bid_info.setText("最高价出价人：" + str(self.auction.highest_owner) + " 最高出价：" + str(self.auction.highest_price))

    def End_bid(self):
        if self.auction.highest_price <= self.auction.on_auction_good.lowest_price:
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                            "拍卖结果",
                                            "流拍！",
                                            QMessageBox.Yes)
        else:
            reply = QMessageBox.information(self,  # 使用infomation信息框
                                            "拍卖结果",
                                            "出价人："+ str(self.auction.highest_owner) + "\n" + "出价：" + str(self.auction.highest_price) + "\n拍卖成功" ,
                                            QMessageBox.Yes)
if __name__ == "__main__":

    app = QApplication(sys.argv)
    myshow = mywindow()
    myshow.show()
    sys.exit(app.exec_())