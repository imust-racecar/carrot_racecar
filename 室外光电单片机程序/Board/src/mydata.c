#include "mydata.h"

int RINGBUF_Init(RINGBUF* r, char array[], size_t len)
{
    if (len <2 || array==NULL){
        return 0;
    }

    r->buf = array;
    r->length = len;
    r->fill_cnt = 0;
    r->head = r->tail = 0;
    return 1;
}

int RINGBUF_Put(RINGBUF* r, char data)
{
    //当tail+1等于head时，说明队列已满
    if (r->fill_cnt >= r->length) {
       // printf("BUF FULL!\n");
        return 0;                  // 如果缓冲区满了，则返回错误
    }
    else
    {
      r->buf[r->tail] = data;
      r->tail++;
      r->fill_cnt++;
      //计算tail是否超出数组范围，如果超出则自动切换到0
      r->tail = r->tail % r->length;
      return 1;
    }
}

int RINGBUF_Get(RINGBUF* r, char *c, unsigned int length)
{
    //当tail等于head时，说明队列空
    if (r->fill_cnt<=0) {
     //   printf("BUF EMPTY!\n");
        return 0;
    }

    //最多只能读取r->length长度数据
    if (length > r->length) {
        length = r->length;
    }

    for (int i = 0; i<length; i++)
    {
        r->fill_cnt--;
        *c = r->buf[r->head++];                 // 返回数据给*c
        *c++;
        //计算head自加后的下标是否超出数组范围，如果超出则自动切换到0
        r->head = r->head % r->length;
    }
    return 1;
}