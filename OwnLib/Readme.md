### 自己写一个C/C++库（.a / .so）
#### 什么是.a / .so
- .a：linux下的静态库
- .so：linux下的动态库
- .lib: windows下的静态库
- .dll: windows下的动态库

#### 剑指 offer中的第一个题为例子：
问题描述：二维数组（int类型）中的寻找是否存在一个数字。
我们把这样的一个问题封装成一个库。

#### 步骤
1. - 编写库函数 ： 不需要有main函数
	gcc -c FindMatrix.cpp -o FindMatrix.o
	gcc的-c选项的意思是：只激活预处理,编译,和汇编,也就是他只把程序做成obj文件  
2. - 生成静态库.a：
	ar cr libmylib.a my_print.o my_math.o
	选项说明：c 如果需要生成新的库文件，不要警告 r 代替库中现有的文件或者插入新的文件
3. - 使用自己的静态库:
	gcc main.cpp -o main -L ./ -lFindMatrix
	main.cpp 中调用生成的静态库
	-o main 生成可执行文件 main
	-L ./ -lFindMatrix -L 参数跟着的是库文件所在的目录名
4. - 静态库删除源库也能继续运行之前的可执行文件
	就是说吧 libFindMatrix.a 删除以后再次运行，也是没有任何问题的。
2. - 生成动态库.so
	gcc --share FindMatrix.cpp -o libFindMatrix.so 通过--share选项开生成对应的.so（动态库）
3. - 使用动态库
	1. 把生成的.so 复制到/usr/lib/ 这是系统默认的库的目录
		gcc main.cpp -o main -l FindMatrix -l选项 指定需连接的库名
	
#### 参考：
- https://www.nowcoder.com/practice/abc3fe2ce8e146608e868a70efebf62e?tpId=13&tqId=11154&tPage=1&rp=1&ru=/ta/coding-interviews&qru=/ta/coding-interviews/question-ranking (剑指offer第一个的描述)
- http://www.cnblogs.com/52php/p/5681711.html（动态库/静态库的一个例子）
- https://www.cnblogs.com/jiqingwu/p/4325382.html
