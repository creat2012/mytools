

class Good(object):
    def __init__(self, _trustee, _info, _lowest_price):
        self.trustee = _trustee
        self.info = _info
        self.lowest_price = _lowest_price

class Auction(object):

    def __init__(self):
        self.goods = []
        self.on_auction_good = None
        self.prices = list()
        self.highest_price = None
        self.highest_owner = None

    def add_good(self, _good):
        self.goods.append(_good)

    def get_good_num(self):
        return len(self.goods)

    def set_on_auction_good(self, id):
        self.on_auction_good = self.goods[id]
        self.highest_price = 0

    def Bid(self, info):
        print( " ----- in bid ------ ")
        # info is a tuple (bidder, bid price)
        self.prices.append(info)
        print(self.highest_price)
        print(info)
        if self.highest_price < info[1]:
            self.highest_price = info[1]
            self.highest_owner = info[0]
        print(self.highest_price, self.highest_owner)
        print(" ----- out bid ----- ")