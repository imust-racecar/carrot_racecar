#ifndef  __CAR_SENSOR_H__
#define  __CAR_SENSOR_H__

#include "common.h"
#include "include.h"
#include  "car_struct.h"            //所有可能用到的结构体的声明


typedef enum
{
  Normalization,
  normal,
}debug_two_mode;


void time_flag_1ms(ADC_info  *Senser_ADC);
void time_flag_5ms(ADC_info  *Senser_ADC,Servo_pid_info *servo);
void bubble(uint32 r[], uint32 n);
void  ADC_aver_val(ADC_info  *Senser_ADC,debug_two_mode  state);



#endif
