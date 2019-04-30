/*
	Q1: 需要在末尾重新分配内存空间吗？多出来得到字符是直接放到后面，还是分配空间以后再放到后面。
	
*/

void ReplaceSpace(char *str, int len)
{
	int i , index;
	int blank_cnt = 0;
	for(i = 0; str[i] != '\0'; i += 1)
		if(str[i] == ' ')
			blank_cnt += 1;
	index = len + blank_cnt * 2;
	str[index --] = '\0';
	for(i = len - 1; i >= 0; i -= 1){
		if(str[i] == ' '){
			str[index --] = '0';
			str[index --] = '2';
			str[index --] = '%';
		}
		else{
			// str[i] is not black
			str[index --] = str[i];
		}
	}
	return ;
}
