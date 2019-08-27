#ifndef  __CAR_MENU_H__
#define  __CAR_MENU_H__


#include "common.h"
#include "include.h"



//主菜单模式选择
typedef enum
{
  NORMAL_MODE,
  DISPLAY,
  PARAMETER_ADJ,
  SAVE_EXIT,
  UN_KNOWN,
  
} Mode_select;


//Mode_select  MODE; 
void lcd_mode_display(uint32 *flag, uint32 *count,uint8 count_MAX);
void view_menu();


void HMI_SendDAT(UARTn_e uratn,char *str);
void view_lcd(void);



extern int8 Normalization_flag;

#endif