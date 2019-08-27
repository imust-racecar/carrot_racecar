#ifndef __INITIALL_H__
#define __INITIALL_H__

#include "common.h"
#include "include.h"



#define CAR_A
#define sensor_num   (6)                 //定义电感的个数


#define ADC_chuizhi_mid     (ADC0_SE0)     //中间垂直电感A0
#define ADC_dip_left        (ADC0_SE1)     //左边斜电感A1
#define ADC_dip_right       (ADC0_SE2)     //右边斜电感A6
#define ADC_level_mid       (ADC0_SE4 )      //中间水平电感B0
#define ADC_left_chuizhi    (ADC0_SE8)        //左垂直
#define ADC_right_chuizhi   (ADC0_SE9)        //右垂直

extern  void init_all(void);


#endif