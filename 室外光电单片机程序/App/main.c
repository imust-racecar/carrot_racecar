 /*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2017,山外科技
 *     All rights reserved.
 *a     技术讨论：山外论坛 http://www.vcan123.com
 *
 *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
 *     修改内容时必须保留山外科技的版权声明。
 *
 * @file       main.c
 * @brief      山外KEA 平台主程序
 * @author     山外科技
 * @version    v6.0
 * @date       2017-12-10
 */

#include "common.h"
#include "include.h"
#include "car_init_all.h"
#include "car_sensor.h"

uint16 str0[6];
extern int32 chuizhi_Mid[5],level_Mid[5],dip_Right[5],dip_Left[5],left_chuizhi[5],left_chuizhi[5],right_chuizhi[5];
extern int stop_flag;
extern int16 pulse_output;  //舵机输出值
int count = 0;
void main()
{
    init_all();  //初始化所有函数
    
    while(1)
    {
      for(int i = 440 ; i < 1050;i++)
      {
      ftm_pwm_duty(FTM0,FTM_CH0,i);
      DELAY_MS(10);
      }
            for(int i = 1050 ; i >440;i--)
      {
      ftm_pwm_duty(FTM0,FTM_CH0,i);
      DELAY_MS(10);
      }
    }
}

