#include <opencv2/opencv.hpp>

int main(){
  cv::VideoCapture cam(0);

  if(!cam.isOpened()){
    return -1;
  }

  cv::namedWindow("Câmera");

  while(true){
    cv::Mat image;
    cam.read(image);
    cv::imshow("Câmera", image);
    if(cv::waitKey(30) == 27) break;
  }

  return 0;
}
