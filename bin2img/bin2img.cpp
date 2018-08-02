#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <fstream>
using namespace std;
using namespace cv;

const int height = 200; // image 's height
const int width = 200;  // image 's width
const int nums = 2; // images 
int main()
{

    ifstream infile;
    vector<Mat> dict;
    infile.open("InputTensor.bin", ios::binary); // InputTensor is the image's bin file
    Mat img = Mat::zeros(height, width, CV_8UC3);
    
	for (int num = 0; num < nums; num++)
    {
        for (int r = num; r < num+img.rows; r++)
            infile.read(reinterpret_cast<char*>(img.ptr(r-num)), img.cols*img.elemSize());

        dict.push_back(img);
    }
    //  show in mywindow
    namedWindow("MyWindow", CV_WINDOW_AUTOSIZE);
    for (int i = 0; i < nums; ++i)
    {
    	imshow("MyWindow", dict[i]);
    	waitKey(0);
    }
    destroyWindow("MyWindow");
    return 0;
}
