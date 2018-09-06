#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
using namespace cv;
using namespace std;
/*
	cv::Mat is matrix for saving the image or maxtrix.
	ref: https://blog.csdn.net/poem_qianmo/article/details/20537737
*/
int main()
{
	Mat test_mat; // defualt, test_mat is 0x0
	cout << test_mat.size() << endl;
	Mat img = imread("./0.jpg"); // read the image
	cout << img.size() << endl;
	imwrite("./1.jpg", img);
	//show in window
	namedWindow("read image");  // create a window
	imshow("read image", img);  // show the image in the window
	waitKey();
	return 0;
}

