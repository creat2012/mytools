
"""


class  Rectangle  	// 矩形
{
	int  left, up, right, down;  //  左、上、右、下
public:
	Rectangle( int l, int u, int r, int d );	//  构造
	void Offset( int cx, int cy );		//  位移
	void onSize( int cx, int cy );		//  大小变化
};
// 大小变化时，cx,cy >0表示扩大，反之缩小

"""
from Shape import  Shape

class Rectangle(Shape):

    def __init__(self, l, u, r, d):
        self.left = l
        self.up = u
        self.right = r
        self.down = d

    def offset(self, cx, cy):
        print(" ----- in offset ----- ")
        self.left += cx
        self.right += cx
        self.up += cy
        self.down += cy
        print(self.left, self.up, self.right, self.down)
        print(" ----- out offset ----- ")

    def onPress(self, cx, cy):
        print(" ----- in onpress ----- ")
        print(self.left, self.up, self.right, self.down)
        print(cx, cy)
        self.is_chosen = False
        if self.left < cx and cx < self.right and self.up < cy and cy < self.down:
            self.is_chosen = True
        else:
            self.is_chosen = False
        print(self.is_chosen)
        print(" ----- out onpress ----- ")



