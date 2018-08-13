#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"

int main(){
	cv::Mat pokan = cv::imread("imgs/pokan.png");
	cv::Mat gray_pokan;
	cvtColor(pokan, gray_pokan, cv::COLOR_BGR2GRAY);
	cv::imwrite("imgs/gray_pokan.png", gray_pokan);	

}
