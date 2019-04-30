#include <iostream>

extern "C" void ReplaceSpace(char*, int);

using namespace std;

int main()
{
	char str[200] = "you are my des!";
	cout << "before replace : " << str << endl; 
	ReplaceSpace(str, 15);
	cout << "after replace : " << str << endl;
	return 0;
}
