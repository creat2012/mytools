## C++调用C语言函数

### 第一步，编写自己的C语言函数（C++调用）
把牛客网剑指offer第二个题目来编写成C语言的函数形式。
#### 描述：
请实现一个函数，将一个字符串中的每个空格替换成“%20”。例如，当字符串为We Are Happy.则经过替换之后的字符串为We%20Are%20Happy。
#### 方法：
参照：https://github.com/creat2012/mytools/tree/master/OwnLib
算法上比较简单就不多赘述。
#### 主要注意：
	extern "C" {
		#include "./Clib/ReplaceSpace.h" // extern "C" 说明调用c语言函数，如果没有这句话会出现找不到函数的错误。
	}
原因在于：
###### 	这个是加extern "C" 以后 编译生成的函数名称 ReplaceSpace；
###### 	这个是加extern "C" 以后 编译生成的函数名称 _Z12ReplaceSpacePci；

就是C语言编译的时候是没有进行命名倾轧的。C++编译是需要进行命名倾轧。命名倾轧是为了支持函数重载而来的。
### 参考
-  https://www.nowcoder.com/practice/4060ac7e3e404ad1a894ef3e17650423?tpId=13&tqId=11155&tPage=1&rp=1&ru=/ta/coding-interviews&qru=/ta/coding-interviews/question-ranking（牛客题目描述）
