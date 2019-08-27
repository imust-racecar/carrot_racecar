#ifndef __CAR_TIME_SIGN_H__
#define __CAR_TIME_SIGN_H__

#include "common.h"
#include "include.h"

extern char str[20];
extern uint32 cnt_1ms ;
extern uint32 ms_1flag ;
extern uint32 ms_5flag ;
extern uint32 ms_7flag ;
extern uint32 ms_10flag ;
extern uint32 ms_13flag ;
extern uint32 ms_17flag ;
extern uint32 ms_20flag ;
extern uint32 ms_25flag;
extern uint32 ms_37flag ;
extern uint32 ms_43flag ;
extern uint32 ms_53flag ;
extern uint32 ms_100flag ;
extern uint32 ms_200flag;
extern uint32 ms_500flag ;



void produce_time_sign();

void time_flag_100ms();





#endif