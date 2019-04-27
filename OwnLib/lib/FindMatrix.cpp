


int FindMatrix(int **array, int n, int m, int target)
{
	/* paramters: array : the 2D array (matrix) every col is increasing and every col is increasing
			      n : the rows
				  m : the cols 
	   return : -1 : some error append
				0  : not found
				1  : found
	*/
	if(n == 0 || m == 0) return -1;
	int x = 0, y = m - 1;
	do{
		if(array[x][y] > target) y -= 1;
		else if(array[x][y] == target) return 1;
		else x += 1;
	}while(x < n && y >= 0);
	return 0; // not found
}
