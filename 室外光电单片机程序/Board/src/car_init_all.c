#include "car_init_all.h"
#include "mydata.h"

extern char round_data[100];
extern RINGBUF madata;
void init_all(void)
{
    /********************************ADC 舵机 电机 LED  TCLK2初始化*************************************/
   /*  adc_init (ADC_chuizhi_mid );       //中间垂直电感A0
     adc_init (ADC_dip_left );        //左边斜电感 A1
     adc_init (ADC_dip_right );      //右边斜电感  A6
     adc_init (ADC_level_mid );     //中间水平电感  B0
     adc_init (ADC_left_chuizhi);    //C0 
     adc_init (ADC_right_chuizhi);   //C1
     
     motor_init();
      
    ftm_pwm_init(FTM1,FTM_CH1,50,765);//舵机  PTC5  
    ftm_pwm_duty(FTM1,FTM_CH1,765);

     ftm_pwm_init(FTM0,FTM_CH0,8000,10000);//电机   PTB2       B3 高 正转  B2高 反转

    ftm_pwm_init(FTM0,FTM_CH1,8000,10000);//电机   PTB3
   */
    while( !RINGBUF_Init(&madata,round_data,100));
    ftm_pwm_init(FTM0,FTM_CH0,50,1050); //舵机745
    ftm_pwm_init(FTM1,FTM_CH0,300,4600); //电机
    
    
    ftm_pulse_init(FTM2, FTM_PS_1, TCLK2);   //FTM2来脉冲计数。不分频，输入引脚为 TCLK2  E7
    gpio_init(PTE1, GPI, 0);
    gpio_init(PTB1, GPO, 0);
    gpio_init(PTC4, GPI, 0);
    gpio_init(PTC5, GPI, 0); 
    
    gpio_init(PTF5, GPI, 0);
    
 //   uart_init(UART0,115200);
 //   uart_rx_irq_en(UART0);
    
   /* led_init (LED0);    //初始化 LED0
    led_init (LED1);    //初始化 LED1
    led_init (LED2);    //初始化 LED2
    led_init (LED3);    //初始化 LED3

    led (LED0,LED_OFF);    //熄灭 LED0
    led (LED1,LED_OFF);    //熄灭 LED1
    led (LED2,LED_OFF);    //熄灭 LED2
    led (LED3,LED_OFF);    //熄灭 LED3

    gpio_init(PTF3, GPO, 0);
*/
     
    /******************************中断***********/
  //  pit_init_ms(PIT0, 1);                                //  定时 1ms
  //  enable_irq(PIT_CH0_IRQn);                             // 使能PIT_CH0中断
  //  EnableInterrupts;   //开总中断（凡是用到中断的，都需要的）

}


