#include "car_time_sign.h"

uint32 ms_1flag=0;
uint32 ms_5flag=0;
uint32 ms_7flag = 0;
uint32 ms_10flag = 0;
uint32 ms_13flag = 0;
uint32 ms_17flag = 0;
uint32 ms_20flag = 0;
uint32 ms_25flag = 0;
uint32 ms_37flag = 0;
uint32 ms_43flag = 0;
uint32 ms_53flag = 0;
uint32 ms_100flag = 0;
uint32 ms_200flag = 0;
uint32 ms_500flag = 0;

void produce_time_sign()   //产生时间标志函数
{
  static uint32 cnt_1ms = 0;
  
  cnt_1ms++;
  if(cnt_1ms>1000)
  {
    cnt_1ms=1;
  }
  ms_1flag=ms_1flag|(!(cnt_1ms%1));
  ms_5flag=ms_5flag|(!(cnt_1ms%5));
  ms_7flag=ms_7flag|(!(cnt_1ms%7));
  ms_10flag=ms_10flag|(!(cnt_1ms%10));
  ms_13flag=ms_13flag|(!(cnt_1ms%13));
  ms_17flag=ms_17flag|(!(cnt_1ms%17));
  ms_20flag=ms_20flag|(!(cnt_1ms%20));
  ms_25flag=ms_25flag|(!(cnt_1ms%25));
  ms_37flag=ms_37flag|(!(cnt_1ms%37));
  ms_43flag=ms_43flag|(!(cnt_1ms%43));
  ms_53flag=ms_53flag|(!(cnt_1ms%53));

  ms_100flag=ms_100flag|(!(cnt_1ms%100));
  ms_200flag=ms_200flag|(!(cnt_1ms%200));
  ms_500flag=ms_500flag|(!(cnt_1ms%500));
  
}





