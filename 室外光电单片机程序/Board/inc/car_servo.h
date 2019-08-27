#ifndef  __CAR_SERVO_H__
#define  __CAR_SERVO_H__

#define turn_km   (0.025)        //差和比的分母拟合系数,越大抑制得越厉害025
 


#include "common.h"
#include "include.h"
#include  "car_struct.h"            //所有可能用到的结构体的声明
#include "car_init_all.h"

int32 square_mid = 0,SUM_dip = 0 ;
int32 chuizhi_Mid[5] = {0},level_Mid[5] = {0},dip_Left[5] = {0},dip_Right[5] = {0},left_chuizhi[5] = {0},right_chuizhi[5] = {0};  //定义4个电感数组方便看
int32  servo_error[10] = {0};
int32 servo_error_rate = 0,servo_error_rate1 = 0;
int32 SUM_LRL;  //左右水平电感和
int32 Left_rate;
int32 Right_rate;//左右电感变化率
int32 CHA_LR=0;
int32 cha_lr=0;
int32 level_minus=0;
int32 chuizhi_rate=0;
int32 chuizhi_minus=0;


//void Cross_deal();     //十字处理
//void Ring_deal();     //圆环处理
//void Curve_deal();    //弯道处理
//int Ramp_distinguish();//坡道识别
//int Cross_distinguish();//十字识别
//int  Ring_distinguish();//圆环识别
//int Curve_distinguish();//弯道识别
//int Straight_distinguish();//直道识别

void Straight_deal();  //直道处理
void RING();
void Cross_deal();


void lose_line();
void search_line();

void Servo_identify(ADC_info  *Senser_ADC);
void servo_control(Servo_pid_info *servo);
void manjiasu();

extern SERVO_STATE servo_state ;  //舵机状态定义
extern CAR_STATE   car_state ;   //定义小车的状态



#endif