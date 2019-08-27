#include "car_sensor.h"
#include "car_init_all.h"

ADC_info  Senser_ADC;
extern Motor_pid_data     motor;
extern SPEED_STATE   speed;
Servo_pid_info servo;


/**************************平均滤波***************
对4个通道进行AD的采集并进行平均滤波
写了两个模式，前期调试不用归一化为normal  后期用归一化则用  Normalization


****************/

void  ADC_aver_val(ADC_info  *Senser_ADC,debug_two_mode  state)
{
  
uint32 sum=0;  
uint16 i=0,j=0;
uint32 senser[sensor_num][20]={0};
  for(i=0;i<20;i++)      //一个通道取20次值
  {
  senser[0][i]=adc_once(ADC_chuizhi_mid,ADC_8bit);
  
  senser[1][i]=adc_once(ADC_dip_left, ADC_8bit); 
  senser[2][i]=adc_once(ADC_dip_right, ADC_8bit);
  senser[3][i]=adc_once(ADC_level_mid,ADC_8bit);
  senser[4][i]=adc_once(ADC_left_chuizhi,ADC_8bit);
  senser[5][i]=adc_once(ADC_right_chuizhi,ADC_8bit);
  }

  for(i=0;i<6;i++)             //对每一个传感器的AD值从大到小进行排序
  {
       bubble((uint32*)&senser[i],20);    //senser[i]是二维数组单个数组的首元素
  
  }
  
  for(i=0;i<sensor_num;i++)      //sensor_num为4个通道的个数
  {  sum=0;
    
     for(j=1;j<19;j++)   //去掉1个最大值和最小值
     {
         sum+=senser[i][j];           
     }
     
     if(state==normal)                                  //normal为一种正常的跑车模式,用结构体定义
        
 Senser_ADC->ad_act_val[i][0] = sum / 18;    //求平均值赋值到这个结构体数组中
     
       
     
                                                //在1ms中断任务后平均滤波后的值到ad_act_val[i][0]
   }
  
  
}




/***********中断1ms的时候执行的任务*****************************************/

void time_flag_1ms(ADC_info  *Senser_ADC)

{
    
                  //滑动滤波之前先把，数据整体移动。把Senser_ADC.ad_act_val[i][0]腾出来
    for (uint8 i = 0; i < sensor_num; i++)
    {
      for (int8 j = 9; j >= 0; j--)
      {
         Senser_ADC->ad_act_val[i][j+1] = Senser_ADC->ad_act_val[i][j];
      }
    }
    //然后采样,滤波
    ADC_aver_val(Senser_ADC,normal);

}

/****************中断5ms执行的任务************************************/


void time_flag_5ms(ADC_info  *Senser_ADC,Servo_pid_info *servo)
{
/****    将平均滤波后的值再进行一次滑动滤波            ***/
  for(uint8 i=0;i<sensor_num;i++)
  {
      Senser_ADC->ad_avr_val[i] = Senser_ADC->ad_act_val[i][0] * 0.5 \
                             + Senser_ADC->ad_act_val[i][1] * 0.2 \
                             + Senser_ADC->ad_act_val[i][2] * 0.1 \
                             + Senser_ADC->ad_act_val[i][3] * 0.1 \
                             + Senser_ADC->ad_act_val[i][4] * 0.1 ;
   
  }

 
  
  Servo_identify(Senser_ADC); //先识别
  
 
  
  servo_control(servo);   //后控制
  
}










/********************冒泡排序******************

** 平均滤波的时候要用到，从大到小排序

** uint32 str[10]; bubble(str, 10);

**************************/

void bubble(uint32 r[], uint32 n)
{    
  int i = n - 1;
  while(i > 0)  //正常情况下，循环 N - 1次
  {
    int pos = 0;
    for (int j = 0; j < i; j++) //循环i次
    {
      if (r[j] < r[j+1])
      {
        pos = j;   //在一次循环中J是从 0 到 i 的
        int tmp = r[j];
        r[j] = r[j+1];
        r[j+1] = tmp;
      } 
    }
    i = pos;  //就是说究竟循环几次，这个是POS说了算的
  }
}











