
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

class Rectangle(object):

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
        print(" ----- out offset ----- ")

    def onsize(self, cx, cy):
        self.left -= cx / 2
        self.right += cx / 2
        self.up -= cy / 2
        self.down += cy / 2

