#ifndef  __MYDATA_H__
#define   __MYDATA_H__

#include "common.h"

typedef struct{
  char *buf;                   //指向队列数组的指针
  uint16 length;               //数据大小
  uint16 head;                 //头部指针，实际并不是指针类型，算是一个标记
  uint16 tail;                 //尾部指针，实际并不是指针类型，算是一个标记
  int fill_cnt;                //队列计数
}RINGBUF;

int RINGBUF_Init(RINGBUF* r, char array[], size_t len);//初始化队列
int RINGBUF_Put(RINGBUF* r, char data);//放数据
int RINGBUF_Get(RINGBUF* r, char *c, unsigned int length);//取数据


#endif