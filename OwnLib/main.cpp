#include <stdio.h>
#include <stdlib.h>
#include "./lib/FindMatrix.h"

int main()
{
	int **arr;
	int n = 7, m = 8;
	arr = (int**)malloc(sizeof(int*) * n);
	for(int i = 0; i < n; i += 1)
	{
		arr[i] = (int*)malloc(sizeof(int) * m); 
		for(int j = 0; j < m; j += 1)
			arr[i][j] = i * 10  + j;
	}
	
	// print the matrix
	for(int i = 0; i < n; i += 1)
	{
		for(int j = 0; j < m; j += 1)
			printf("%d ", arr[i][j]);
		printf("\n");
	}

	int res, target;
	target = 20;
	res = FindMatrix(arr, n, m, target);
	if(res == -1)
		printf("finding %d, something error\n", target);
	else if(res == 0)
		printf("%d not founded\n", target);
	else
		printf("%d founded\n", target);
	
	target = 200;
	res = FindMatrix(arr, n, m, target);
	if(res == -1)
		printf("finding %d, something error\n", target);
	else if(res == 0)
		printf("%d not founded\n", target);
	else
		printf("%d founded\n", target);
	return 0;
}
