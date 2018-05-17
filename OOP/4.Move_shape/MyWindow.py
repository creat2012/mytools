
"""
class  MyWindow  :  public  Rectangle
{				//  继承矩形
	int  f_width;		//	边框线宽
	int  t_height;		//	标题栏高度
	int  state;		//	被选中状态
public:
	MyWindow( int w, int h, int l, int u, int r, int d );
	void  onPress( int x, int y );	//  鼠标按下
	void  onMove( int cx, int cy );	//  鼠标移动
	void  onRelease( int x, int y );	//  鼠标释放
};
//	继承矩形的属性和行为，提供特殊属性和行为

"""
from Rectangle import Rectangle

class MyWindow(Rectangle):
    """ windows class"""
    def __init__(self, w, h, l, u, r, d):
        Rectangle.__init__(self, l, u, r, d)
        self.f_width = w
        self.t_height = h
        self.state = -1

    def onPress(self, x, y):
        print(" ----- in onpress -----")
        print(x, y)
        print(self.left, self.up, self.right, self.down)
        if self.left < x and x < self.right and self.up < y and y < self.up + self.t_height:
            self.state = 0 # title
        elif self.left == x:
            self.state = 1 # left
        elif self.up == y:
            self.up =  2 # up
        elif self.right == x:
            self.state =  3 # right
        elif self.down == y:
            self.state = 4 # down
        else:
            self.state = -1
        print(self.state)
        print(" ----- end onpress ----- ")

    def onMove(self, cx, cy):
        print(" ----- in onmove ----- ")
        print(self.state)
        if self.state == 0:
            self.offset(cx, cy)
        elif self.state == 1:
            self.onsize(-cx, 0)
            self.offset(cx / 2, 0)
        elif self.state == 2:
            self.onsize(0, -cy)
            self.offset(0, cy / 2)
        elif self.state == 3:
            self.onsize(cx, 0)
            self.offset(cx / 2, 0)
        elif self.state == 4:
            self.onsize(0, cy)
            self.offset(0, cy / 2)
        print(" ----- out onmove ----- ")

    def onRelease(self, x, y):
        self.state = -1
