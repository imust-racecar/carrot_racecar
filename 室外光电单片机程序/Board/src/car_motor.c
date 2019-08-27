#include "car_motor.h"
#include "car_struct.h"

Motor_pid_data     motor;
SPEED_STATE   speed;
//uint16 str0[2];

/******** Using 'PID 'to control the speed of hope *********/

void motor_init()
{
  motor.kp=20;    // kp of the motor
  motor.ki=1.5;   // ki of the motor
  
// motor.set_speed=300;   // motor speed of hope
  
  motor.speed_error=0;    // motors's error 
 
  motor.spe_nP=0;         // motors's  speed of proportion or integral
  motor.spe_nI=0;
}

int stop_flag = 0;
#define stop_time 100
void  motor_control(Motor_pid_data *motor,SPEED_STATE *speed)
{
 motor->Integral_MAX=4000;
 motor->Integral_MIN=-4000;
  static int cnt=0;
 // static float speed_error_last=0;
  //static float spe_nI_last=0;
        
  /****   设定值-实测值  ***/
  
  motor->speed_error= motor->set_speed - motor->count ;
  
 /****   速度环比例控制   ***/
   motor->spe_nP=motor->kp * motor->speed_error;
  
  
 /****   速度环积分控制 ***/
  motor->spe_nI += motor->ki * motor->speed_error;
 
 // motor->spe_nI=spe_nI_last + motor->spe_nI; 
 // spe_nI_last =  motor->spe_nI;
  
  /****在此设置一个积分限幅****/ 
  if(motor->spe_nI>motor->Integral_MAX)
    motor->spe_nI=motor->Integral_MAX;
  else if(motor->spe_nI<motor->Integral_MIN)
    motor->spe_nI=motor->Integral_MIN;

  
   motor->spe_nI = 0;
  
   motor->output=motor->spe_nP + motor->spe_nI ;
 /* 
   
   if (motor->output >= 10000)
     motor->output = 10000;
   else if (motor->output <= -10000)
     motor->output = -10000; 

  
   if(stop_flag)
   {
      motor->output = -1000; //刹车速度
      cnt++;
      if(cnt>stop_time){ //刹车完成
         stop_flag = 0;
         cnt = 0;
         
      }
   }*/
   
   if (motor->output >= 10000)
     motor->output = 10000;
   else if (motor->output <= 0)
     motor->output = 0; 
  
   if(motor->output>=0)
   {
     ftm_pwm_duty(FTM0,FTM_CH1,motor->output);    //B3
     ftm_pwm_duty(FTM0,FTM_CH0,0);
   }
   /*else
   {
     motor->output = -motor->output;
     ftm_pwm_duty(FTM0,FTM_CH1,0);    //B3
     ftm_pwm_duty(FTM0,FTM_CH0,motor->output);
   }
    
  */
}




 /**     采集的脉冲数进行滤波           */


void average_wave_filtering(Motor_pid_data *motor)
{       
   motor->count = ftm_pulse_get(FTM2);   
   ftm_pulse_clean(FTM2);                //清空计数。
}


