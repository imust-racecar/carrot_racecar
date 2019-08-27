#ifndef  __CAR_MOTOR_H__
#define  __CAR_MOTOR_H__

#include "common.h"
#include "include.h"
#include  "car_struct.h"            //所有可能用到的结构体的声明



void  motor_control(Motor_pid_data *motor,SPEED_STATE *speed);  //电机控制
//void pluse_bubble(uint32 r[], uint32 n);
void average_wave_filtering(Motor_pid_data *motor);
//void moving_average_wave_filtering(Motor_pid_data *motor);
void motor_init();

#endif