#ifndef __CAR_KEY_H__
#define __CAR_KEY_H__

#include "common.h"
#include "include.h"

//基于状态机的按键扫描程序
typedef enum
{
  keystate0,  //无按键按下的状态，按键松开的状态
  keystate1,  //有按键按下
  keystate2, // 从按键按下一直持续到按键持续按下的状态
  keystate3, // 持续按下的状态
}KEYSTATE;

KEY_STATUS_e key_statecheck(KEY_e key);
KEY_STATUS_e key_Timecheck(KEY_e key);
void Key_init_all();
KEY_e Key_scan();

//enum key_scan();

#endif