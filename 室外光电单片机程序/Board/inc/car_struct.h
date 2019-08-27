#ifndef __CAR_STRUCT_H__
#define __CAR_STRUCT_H__

/*********************汽车相关参数的结构体***********************/
#include "common.h"




//ADC
typedef struct
{

  uint32 ad_mid_val[10]; //AD采样中值
  uint32 ad_add_val[10]; //AD采样中值和
  int32 ad_avr_val[6]; //AD采样平均值
  uint32 ad_max_val[10]; //AD最大值
  uint32 ad_min_val[10]; //AD最小值

 
  uint32 ad_act_val[6][15]; //ad实测值，

}ADC_info;




/*

typedef enum
{
 // Ring, //圆环
  Straight,   //直道
 // Curve,     //弯道
  Ramp,    //十字
  //Cross,     //坡道
}TRACK_TYPE;
*/
typedef enum
{
  Normal,
  Loseline,
  OUT,
}CAR_STATE;

typedef enum
{
  left_lock,
  right_lock,
  freedom,
}SERVO_STATE;





//舵机，方向
typedef  struct
{
  float kp_1;
  float kp_2;
  float kd;
  float ki;
  float servo_nI;
  int16 pos;  //位置有正负啊
 // int16  output;
  uint16 pulse_middle;   //舵机中值
  uint16 pulse_left;    //舵机左值
  uint16 pulse_right;    //舵机右值
  int16 pulse_output;  //舵机输出值
  int8 flag_right_left , flag_old ; //等于1左转标志位,等于3右转标志位，等于2中间转向
  int8 flag_cuandao ;  //窜道标志

}Servo_pid_info;  //舵机方向控制参数




typedef struct
{ 
  
  uint32 pluse_average[1][10];
  
  float Integral_MAX;
  float Integral_MIN;
  float kp;
  float ki;
  
  int32 count;
  int32 output;
  
  int32 set_speed;
  
  int speed_error;
  
  float spe_nP;   //比例控制
  float spe_nI;  //积分控制

}Motor_pid_data;


typedef struct
{
  int32 Stop_speed;   //刹车
  int32 L_Low_speed;  //低低速
  int32 Low_speed;    //低速，丢线的时候用
  int32 M_Low_speed;  //中低速
  int32 Middle_speed; //中速，弯道的时候用
  int32 M_High_speed; //中高速
  int32 High_speed;  //高速，直道的时候用
}SPEED_STATE;



extern Servo_pid_info   servo;
extern Motor_pid_data     motor;
extern ADC_info     Senser_ADC;
extern SPEED_STATE   speed;

#endif