#include "car_servo.h"



SERVO_STATE servo_state ;  //舵机状态定义
CAR_STATE   car_state ;   //定义小车的状态


int Cross_distinguish=0;
int Cross_again=0;
/***********         识别赛道类型                   **************/
void Servo_identify(ADC_info  *Senser_ADC)
 
{
   for (int i = 3; i >= 0; i--)  //整体向后移动
  {
    chuizhi_Mid[i+1] = chuizhi_Mid[i];
    dip_Left[i+1] = dip_Left[i];
    dip_Right[i+1] = dip_Right[i];
    level_Mid[i+1] = level_Mid[i];
    left_chuizhi[i+1]=left_chuizhi[i];
    right_chuizhi[i+1]=right_chuizhi[i];
  }  

  /***        滑动滤波后的值再进行赋值               **/
  chuizhi_Mid[0]   = (Senser_ADC->ad_avr_val[0]);
  dip_Left[0]      = (Senser_ADC->ad_avr_val[1]);
  dip_Right[0]     = (Senser_ADC->ad_avr_val[2]);
   level_Mid[0]    = (Senser_ADC->ad_avr_val[3]);
   left_chuizhi[0] = (Senser_ADC->ad_avr_val[4]);
   right_chuizhi[0]= (Senser_ADC->ad_avr_val[5]);

   for(int i=3;i>=0;i--)
   {
   servo_error[i+1]=servo_error[i];
   dip_Left[i+1]=dip_Left[i];
   chuizhi_Mid[i+1]=chuizhi_Mid[i];
   }
   
   
  SUM_dip = dip_Right[0] + dip_Left[0];   //左右斜电感之和
  square_mid = turn_km * level_Mid[0] * level_Mid[0]; //计算平均增长率
 // SUM_lrl=dip_Right[0]+dip_Left[0]+level_Mid[0];  //   左右水平和
  SUM_LRL=left_chuizhi[0] + right_chuizhi[0] + level_Mid[0];
  CHA_LR=abs(dip_Left[0]-dip_Right[0]);
 // cha_lr=dip_Left[0]-dip_Right[0];
  cha_lr=left_chuizhi[0]-right_chuizhi[0];
  Left_rate=dip_Left[0]-dip_Left[2];
  Right_rate=dip_Right[0]-dip_Right[2];
  level_minus=140 - level_Mid[0];
  chuizhi_minus=chuizhi_Mid[0] - 20;
 // chuizhi_rate=chuizhi_Mid[0]-chuizhi_Mid[4];
  
  search_line();
// lose_line();
   Straight_deal();  
   RING();
 //  Cross_deal();

}



/******************控制舵机打角**********************************
**** 处理偏差
***  输入偏差
***  输出舵机打角值

***/

void servo_control(Servo_pid_info *servo)
{ 
  servo->pulse_middle=750;
  servo->pulse_left=820;
  servo->pulse_right=670;
  
 
  servo_error_rate=servo_error[0]-servo_error[2];   //微分 引入偏差的变化率
 
    
  
    
/******   P  D     *****/  
  servo->kp_1=0.9;
   servo->kd=3.3;
 
   servo->pulse_output = servo_error[0] * servo->kp_1 + servo_error_rate * servo->kd;

 
  
  
    servo->pulse_output = -servo->pulse_output;
    servo->pulse_output += servo->pulse_middle;  //舵机加上中值
 
    if(servo->pulse_output>=servo->pulse_left)
      servo->pulse_output=servo->pulse_left;
    else if(servo->pulse_output<=servo->pulse_right)
            servo->pulse_output=servo->pulse_right;
    
    
   
   
     if(servo_state==freedom)
     {
    ftm_pwm_duty(FTM1, FTM_CH1, servo->pulse_output);
     
     }  
      else if(servo_state==left_lock)
        ftm_pwm_duty(FTM1, FTM_CH1, servo->pulse_left);
      else if(servo_state==right_lock)
        ftm_pwm_duty(FTM1, FTM_CH1, servo->pulse_right);
    

}






/**************************识别出来后进行处理************************************************************/
/**********************************************************************************************/

/***********       直道处理    **********/

void Straight_deal()
{
  
 
 
  switch(car_state)
            {
              case Normal: 
                     servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
              sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.01*SUM_dip + 1.7*square_mid+1):
              0 - sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.01*SUM_dip + 1.7*square_mid+1);
              
             //  manjiasu();
           motor.set_speed=380;       //电机速度
                   


                break;
                
          //  case Loseline: search_line();
                //   break;
                
            }
  
        if(chuizhi_minus>12 && (level_minus>15 && level_minus<80))    //弯道减速
          
            {
             
                 led(LED0,LED_ON);
                
                 switch(car_state)
                      {
                      
                      case Normal: 
                          servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
                                sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.1*SUM_dip + 1.2*square_mid+1):
                                0 - sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.1*SUM_dip + 1.2*square_mid+1);

                               motor.set_speed=370;  
                                                 


                        break;
                      }
                             led(LED0,LED_OFF);

            }
   

}




/***********       十字处理    *********
长直道接的十字，刚出弯的十字

*/

void Cross_deal()
{
   
  
  
  static int16 cross_cnt=0;
 
 if((chuizhi_Mid[0]>=90&&chuizhi_Mid[0]<=180) && cha_lr>10)   //十字第一段,在圆环前
             
      cross_cnt++;
 else if(cross_cnt>0)
      cross_cnt--;
  
 if(cross_cnt>2)
 {
    cross_cnt=0;
    Cross_distinguish=1;
 
 
 }
 else Cross_distinguish=0;
 if(Cross_distinguish==1)
 {
    switch(car_state)
              {
            case Normal:
              servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
                               0- sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.01*SUM_dip + 0.9*square_mid):
                                 sqrt(abs(dip_Right[0] - dip_Left[0]))*2000/ (0.01*SUM_dip + 0.9*square_mid);
                                   motor.set_speed=390;

                                  break;
              }
 
       if(dip_Right[0]<=50)
       {
          switch(car_state)
              {
            case Normal:
              servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
                               0- sqrt(abs(dip_Right[0] - dip_Left[0]))*200 / (1*SUM_dip + 1.4*square_mid):
                                 sqrt(abs(dip_Right[0] - dip_Left[0]))*200/ (1*SUM_dip + 1.4*square_mid);
                                   motor.set_speed=390;

                                  break;
              }
       
       
       }
 }
 
 
 static int16 Cross_cnt=0;
  if((chuizhi_Mid[0]>=90&&chuizhi_Mid[0]<=180) && cha_lr<-10)   //十字第一段,在圆环前
             
      Cross_cnt++;
 else if(cross_cnt>0)
      Cross_cnt--;
  
 if(Cross_cnt>2)
 {
    Cross_cnt=0;
    Cross_again=1;
    Cross_distinguish=0;
 }
 else 
 {
     Cross_again=0;
    Cross_distinguish=1;
 
 }
 if(Cross_again==1)
 {
    switch(car_state)
              {
            case Normal:
              servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
                               0- sqrt(abs(dip_Right[0] - dip_Left[0]))*2000 / (0.01*SUM_dip + 0.9*square_mid):
                                 sqrt(abs(dip_Right[0] - dip_Left[0]))*2000/ (0.01*SUM_dip + 0.9*square_mid);
                                   motor.set_speed=250;

                                  break;
              }
      
    
           if(dip_Left[0]<=50)
              {  
                      switch(car_state)
                          {
                        case Normal:
                          servo_error[0] = (dip_Right[0] - dip_Left[0])>0?
                                           0- sqrt(abs(dip_Right[0] - dip_Left[0]))*200 / (1*SUM_dip + 1.4*square_mid):
                                             sqrt(abs(dip_Right[0] - dip_Left[0]))*200/ (1*SUM_dip + 1.4*square_mid);
                                               motor.set_speed=250;

                                              break;
                          }
 
 
                }
 
}

}


/***********       圆环处理    **********/



void RING()
{ 
  
  //小环
  
 static int bianliang=0;
 static int16 SUM_MAX=0;
 static int Rring_cnt=0,Lring_cnt=0;
  int shibie_ring=0;
 static int right_turn=0,left_turn=0;
  static int oneflag=0;
  static int flag=0;
  static int right_curve=0,Rcurve=0,left_curve=0,Lcurve=0;
  int secondflag=1;
  if(SUM_LRL>SUM_MAX)
    SUM_MAX=SUM_LRL;
  
 
 
  
   if(SUM_MAX>= 420 && chuizhi_Mid[0]<150)  //识别到圆环     right
  {

    shibie_ring=1;
  }
 
  if(shibie_ring)
  {
   // if(right_chuizhi[0]>125&&(left_chuizhi[0]<=100&&left_chuizhi[0]>90)&&chuizhi_Mid[0]<=30)
    //   if(right_chuizhi[0]>140 && chuizhi_Mid[0]<=25&&left_chuizhi[0]>70)     //left_chuzhi 之前是85
   if(right_chuizhi[0]>125 && chuizhi_Mid[0]<=30&&left_chuizhi[0]>65)     //left_chuzhi 之前是85
   // if(right_chuizhi[0]>175)
   // if(cha_lr<-60 && chuizhi_Mid[0]<=30)
      right_turn=1;
  
  }
  
  if(right_turn)
  {
    Rring_cnt++;
    servo_error[0]=70;
    motor.set_speed=300;
    oneflag=1;
    SUM_MAX=0;
    led(LED2,LED_ON);
    led(LED3,LED_ON);
    if(Rring_cnt==100)
    {
      Rring_cnt=0;
      right_turn=0;
      shibie_ring=0;
      SUM_MAX=0;
      right_curve=1;
      led(LED2,LED_OFF);
      led(LED3,LED_OFF);
    }
  
  
  }
     
  
  
  
  if(oneflag)                    //do not distinguish ring in 2s
  {
    flag++;
    secondflag=0;
    if(flag==400)
    {
      flag=0;
      oneflag=0;
      secondflag=1; 
    
    }
  
  }
  
  
   if(right_curve==1 && dip_Right[0]>220)         //out ring
      {
        Rcurve++;
        servo_error[0]=75;            //大环75
        motor.set_speed=300;
       
        SUM_MAX=0;
          if(Rcurve==50)
          {
            right_curve=0;
            

          }
      }
  
  

  if(secondflag) 
  {
  if(SUM_MAX>420 && chuizhi_Mid[0]<150)           //left
    bianliang=1;
  if(bianliang)
  { 
    //if(left_chuizhi[0]>=144 && (right_chuizhi[0]<125&&right_chuizhi[0]>47) && chuizhi_Mid[0]>50)
    if(left_chuizhi[0]>=160 && (right_chuizhi[0]<125&&right_chuizhi[0]>65) && chuizhi_Mid[0]>45)
   // if(cha_lr>50 && chuizhi_Mid[0]>50)
      left_turn=1;  
  }
  
   if(left_turn)
  {
    Lring_cnt++;
    servo_error[0]=-60;
    motor.set_speed=300;
    led(LED0,LED_ON);
    led(LED1,LED_ON);
    if(Lring_cnt==100)
    {
      Lring_cnt=0;
      left_turn=0;
      left_curve=1;
      SUM_MAX=0;
      bianliang=0;
      led(LED0,LED_OFF);
      led(LED1,LED_OFF);
    }
       
  
  
  
  }
  }

   /*  if(left_curve==1 && dip_Left[0]>220)         //out ring
      {
        Lcurve++;
        servo_error[0]=-75;
        motor.set_speed=300;
        led(LED3,LED_ON);
        SUM_MAX=0;
          if(Lcurve==100)
          {
            left_curve=0;
            led(LED3,LED_OFF);

          }
      }
  
  */
  
  
  
  
  //大环
  
  

}



/******      丢线处理       ******/
void lose_line()
{

  
  static int16 lose_leftline_cnt=0,lose_rightline_cnt=0;
  if(dip_Left[0]<10)
    lose_leftline_cnt++;
  else if(lose_leftline_cnt>0)
    lose_leftline_cnt--;
  
  if(dip_Right[0]<10)
  lose_rightline_cnt++;
  else if(lose_rightline_cnt>0)
   lose_rightline_cnt--;
  
  if(lose_leftline_cnt>5)
  {  
    ftm_pwm_duty(FTM0,FTM_CH1,9100);  //丢线电机减速和舵机向一边打死
    servo_state=right_lock;
  }  
else if(lose_rightline_cnt>5)
{   
      ftm_pwm_duty(FTM0,FTM_CH1,9100);  
      servo_state=left_lock;
}
}

void search_line()
{
static int16 search_line_cnt=0;
    if((dip_Left[0]>=16)||(dip_Right[0]>=16))
      search_line_cnt++;
    else
      search_line_cnt--;
    
    if(search_line_cnt>5)
    {
    search_line_cnt=0;
     car_state = Normal;

    servo_state = freedom;   //解锁舵机
    
    }
   else if(search_line_cnt<0)
      search_line_cnt=0;
    
}




void manjiasu()

{

    static int i=290;
    i=i++;
    motor.set_speed=i;
   
    if(i>=300)
      
      motor.set_speed=300;
    
    if(motor.set_speed==200)
      i=290;




}






