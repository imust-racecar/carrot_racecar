













 




 














 




 
typedef unsigned char       uint8;   
typedef unsigned short int  uint16;  
typedef unsigned long int   uint32;  
typedef unsigned long long  uint64;  

typedef char                int8;    
typedef short int           int16;   
typedef long  int           int32;   
typedef long  long          int64;   

typedef volatile int8       vint8;   
typedef volatile int16      vint16;  
typedef volatile int32      vint32;  
typedef volatile int64      vint64;  

typedef volatile uint8      vuint8;   
typedef volatile uint16     vuint16;  
typedef volatile uint32     vuint32;  
typedef volatile uint64     vuint64;  



 
typedef union
{
    uint32  DW;
    uint16  W[2];
    uint8   B[4];
    struct
    {
        uint32 b0: 1;
        uint32 b1: 1;
        uint32 b2: 1;
        uint32 b3: 1;
        uint32 b4: 1;
        uint32 b5: 1;
        uint32 b6: 1;
        uint32 b7: 1;
        uint32 b8: 1;
        uint32 b9: 1;
        uint32 b10: 1;
        uint32 b11: 1;
        uint32 b12: 1;
        uint32 b13: 1;
        uint32 b14: 1;
        uint32 b15: 1;
        uint32 b16: 1;
        uint32 b17: 1;
        uint32 b18: 1;
        uint32 b19: 1;
        uint32 b20: 1;
        uint32 b21: 1;
        uint32 b22: 1;
        uint32 b23: 1;
        uint32 b24: 1;
        uint32 b25: 1;
        uint32 b26: 1;
        uint32 b27: 1;
        uint32 b28: 1;
        uint32 b29: 1;
        uint32 b30: 1;
        uint32 b31: 1;
    };
} Dtype;    



 
typedef struct
{
    uint16 x;
    uint16 y;
} Site_t;



 
typedef struct
{
    uint16 W;       
    uint16 H;       
} Size_t;





 
typedef enum
{
     
    NonMaskableInt_IRQn          = -14,               
    HardFault_IRQn               = -13,               
    SVCall_IRQn                  = -5,                
    PendSV_IRQn                  = -2,                
    SysTick_IRQn                 = -1,                

     
    Reserved16_IRQn              = 0,                 
    Reserved17_IRQn              = 1,                 
    Reserved18_IRQn              = 2,                 
    Reserved19_IRQn              = 3,                 
    Reserved20_IRQn              = 4,                 
    FTMRE_IRQn                   = 5,                 
    PMC_IRQn                     = 6,                 
    IRQ_IRQn                     = 7,                 
    I2C0_IRQn                    = 8,                 
    I2C1_IRQn                    = 9,                 
    SPI0_IRQn                    = 10,                
    SPI1_IRQn                    = 11,                
    UART0_IRQn                   = 12,                
    UART1_IRQn                   = 13,                
    UART2_IRQn                   = 14,                
    ADC_IRQn                     = 15,                
    ACMP0_IRQn                   = 16,                
    FTM0_IRQn                    = 17,                
    FTM1_IRQn                    = 18,                
    FTM2_IRQn                    = 19,                
    RTC_IRQn                     = 20,                
    ACMP1_IRQn                   = 21,                
    PIT_CH0_IRQn                 = 22,                
    PIT_CH1_IRQn                 = 23,                
    KBI0_IRQn                    = 24,                
    KBI1_IRQn                    = 25,                
    Reserved42_IRQn              = 26,                
    ICS_IRQn                     = 27,                
    WDOG_IRQn                    = 28,                
    PWT_IRQn                     = 29,                
    MSCAN_RX_IRQn                = 30,                
    MSCAN_TX_IRQn                = 31                 
} IRQn_t, IRQn_Type;





 
typedef enum
{
     
    NonMaskableInt_VECTORn           = 2,               
    HardFault_VECTORn                = 3,               
    SVCall_VECTORn                   = 11,                
    PendSV_VECTORn                   = 14,                
    SysTick_VECTORn                  = 15,                

     
    FTMRE_VECTORn                    = 21,                 
    PMC_VECTORn                      = 22,                 
    IRQ_VECTORn                      = 23,                 
    I2C0_VECTORn                     = 24,                 
    I2C1_VECTORn                     = 25,                 
    SPI0_VECTORn                     = 26,                
    SPI1_VECTORn                     = 27,                
    UART0_VECTORn                    = 28,                
    UART1_VECTORn                    = 29,                
    UART2_VECTORn                    = 30,                
    ADC_VECTORn                      = 31,                
    ACMP0_VECTORn                    = 32,                
    FTM0_VECTORn                     = 33,                
    FTM1_VECTORn                     = 34,                
    FTM2_VECTORn                     = 35,                
    RTC_VECTORn                      = 36,                
    ACMP1_VECTORn                    = 37,                
    PIT_CH0_VECTORn                  = 38,                
    PIT_CH1_VECTORn                  = 39,                
    KBI0_VECTORn                     = 40,                
    KBI1_VECTORn                     = 41,                

    ICS_VECTORn                      = 43,                
    WDOG_VECTORn                     = 44,                
    PWT_VECTORn                      = 45,                
    MSCAN_RX_VECTORn                 = 46,                
    MSCAN_TX_VECTORn                 = 47                 
} VECTORn_t;



 





 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 












 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



  

                 













 

   



                 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

   

 

   #pragma system_include






 




 

 


 


 

 

 

 

 

 

 

 

 

 














 












 




















 










 




















































































































 


 










 





















 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 
















































 













 






 


   

  







 





 





 




 



 





 




 



 












 
   






 
  #pragma language = save 
  #pragma language = extended
  #pragma language = restore






 





 




 





 








                 




















 


                 

 

 
 

 

 

 

 



                 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 





                                 








                 

                 

                 

                 
                 



                 
                                 


  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

 

                 
  typedef _VA_LIST __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;





typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 














 


  #pragma system_include





 






















































































 

 


  
 

   


  





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);



  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 









   
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore








     
  



   

  


  
  typedef void *__iar_Rmtx;
  
  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  
 
  __intrinsic __nounwind void __iar_clearlocks(void);



  



  


  typedef unsigned _Once_t;

  








                 


                 
  
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  

                 


                 







 
 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 






                 
typedef _Sizet size_t;

typedef unsigned int __data_size_t;




 
 

  #pragma system_include



  

 

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);









 



 
#pragma rtmodel="__dlib_file_descriptor","0"

                 









                 
typedef _Fpost fpos_t;

                 
#pragma language=save
#pragma language=extended




              
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
              
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);
  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);
_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
               
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);

              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore








 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 












 


  #pragma system_include


  
  

  





 


  




 


  


 

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }

  
  




                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        memcmp(const void *, const void *,
                                                size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memcpy(void *, 
                                                const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memmove(void *, const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), returns 1")    __intrinsic __nounwind void *     memset(void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strcat(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strcmp(const char *, const char *);
_Pragma("function_effects = no_write(1,2)")     __intrinsic __nounwind int        strcoll(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strcpy(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strcspn(const char *, const char *);
                 __intrinsic __nounwind char *     strerror(int);
_Pragma("function_effects = no_state, no_errno, no_write(1)")      __intrinsic __nounwind size_t     strlen(const char *);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strncat(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strncmp(const char *, const char *, 
                                                 size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strncpy(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strspn(const char *, const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind char *     strtok(char *, 
                                                const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind size_t     strxfrm(char *, 
                                                 const char *, size_t);

  _Pragma("function_effects = no_write(1)")      __intrinsic __nounwind char *   strdup(const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strcasecmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strncasecmp(const char *, const char *, 
                                                   size_t);
  _Pragma("function_effects = no_state, no_errno, no_write(2)")    __intrinsic __nounwind char *   strtok_r(char *, const char *, char **);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind size_t   strnlen(char const *, size_t);



  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);


                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *__iar_Memchr(const void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strchr(const char *, int);
               __intrinsic __nounwind char *__iar_Strerror(int, char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strpbrk(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strrchr(const char *, int);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strstr(const char *, const char *);


                 
                 
    #pragma inline
    void *memchr(const void *_S, int _C, size_t _N)
    {
      return (__iar_Memchr(_S, _C, _N));
    }

    #pragma inline
    char *strchr(const char *_S, int _C)
    {
      return (__iar_Strchr(_S, _C));
    }

    #pragma inline
    char *strpbrk(const char *_S, const char *_P)
    {
      return (__iar_Strpbrk(_S, _P));
    }

    #pragma inline
    char *strrchr(const char *_S, int _C)
    {
      return (__iar_Strrchr(_S, _C));
    }

    #pragma inline
    char *strstr(const char *_S, const char *_P)
    {
      return (__iar_Strstr(_S, _P));
    }

  #pragma inline
  char *strerror(int _Err)
  {
    return (__iar_Strerror(_Err, 0));
  }









 
 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 




 
#pragma rtmodel="__dlib_full_locale_support",   "0"




extern int __aeabi_MB_CUR_MAX(void);





                 



                 
  typedef _Wchart wchar_t;

typedef struct
{        
  int quot;
  int rem;
} div_t;

typedef struct
{        
  long quot;
  long rem;
} ldiv_t;

    #pragma language=save
    #pragma language=extended
    typedef struct
    {      
      _Longlong quot;
      _Longlong rem;
    } lldiv_t;
    #pragma language=restore

                 
  
__intrinsic __nounwind int atexit(void (*)(void));
  __intrinsic __noreturn __nounwind void _Exit(int) ;
__intrinsic __noreturn __nounwind void exit(int) ;
__intrinsic __nounwind char * getenv(const char *);
__intrinsic __nounwind int system(const char *);



             __intrinsic __noreturn __nounwind void abort(void) ;
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int abs(int);
             __intrinsic __nounwind void * calloc(size_t, size_t);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind div_t div(int, int);
             __intrinsic __nounwind void free(void *);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind long labs(long);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind ldiv_t ldiv(long, long);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind long long llabs(long long);
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind lldiv_t lldiv(long long, long long);
    #pragma language=restore
             __intrinsic __nounwind void * malloc(size_t);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int mblen(const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t mbstowcs(wchar_t *, 
                                          const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind int mbtowc(wchar_t *, const char *, 
                                     size_t);
             __intrinsic __nounwind int rand(void);
             __intrinsic __nounwind void srand(unsigned int);
             __intrinsic __nounwind void * realloc(void *, size_t);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long strtol(const char *, 
                                      char **, int);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long strtoul(const char *, char **, int);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t wcstombs(char *, 
                                          const wchar_t *, size_t);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind int wctomb(char *, wchar_t);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long long strtoll(const char *, char **, int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long long strtoull(const char *, 
                                                          char **, int);
    #pragma language=restore




    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoul(const char *, char **, 
                                                        int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stof(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stod(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stold(const char *, char **, 
                                                          long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long          __iar_Stolx(const char *, char **, int, 
                                                        int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoulx(const char *, char **,
                                                         int, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stofx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stodx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stoldx(const char *, char **, 
                                                         long, int *);
      #pragma language=save
      #pragma language=extended
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong   __iar_Stoll(const char *, char **, 
                                                        int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoull(const char *, char **, 
                                                          int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong    __iar_Stollx(const char *, char **, 
                                                          int, int *);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoullx(const char *, char **, 
                                                           int, int *);
      #pragma language=restore





typedef int _Cmpfun(const void *, const void *);

_Pragma("function_effects = no_write(1,2)") __intrinsic void * bsearch(const void *, 
                                                   const void *, size_t,
                                                   size_t, _Cmpfun *);
             __intrinsic void qsort(void *, size_t, size_t, 
                                               _Cmpfun *);
             __intrinsic void __qsortbbl(void *, size_t, size_t, 
                                                    _Cmpfun *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind double atof(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int atoi(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind long atol(const char *);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1)") __intrinsic __nounwind long long atoll(const char *);
    #pragma language=restore
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float strtof(const char *, 
                                         char **);
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double strtold(const char *, char **);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double strtod(const char *, 
                                        char **);
                                        
                                        
               __intrinsic __nounwind size_t __iar_Mbcurmax(void);

  _Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int __iar_DLib_library_version(void);
  




  
  typedef void _Atexfun(void);
  

                 
    #pragma inline=no_body
    double atof(const char *_S)
    {       
      return (__iar_Stod(_S, 0, 0));
    }

    #pragma inline=no_body
    int atoi(const char *_S)
    {       
      return ((int)__iar_Stoul(_S, 0, 10));
    }

    #pragma inline=no_body
    long atol(const char *_S)
    {       
      return ((long)__iar_Stoul(_S, 0, 10));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long atoll(const char *_S)
        {       
            return ((long long)__iar_Stoull(_S, 0, 10));
        }
        #pragma language=restore

    #pragma inline=no_body
    double strtod(const char * _S, char ** _Endptr)
    {       
      return (__iar_Stod(_S, _Endptr, 0));
    }

      #pragma inline=no_body
      float strtof(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stof(_S, _Endptr, 0));
      }

      #pragma inline=no_body
      long double strtold(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stold(_S, _Endptr, 0));
      }

    #pragma inline=no_body
    long strtol(const char * _S, char ** _Endptr, 
                int _Base)
    {       
      return (__iar_Stolx(_S, _Endptr, _Base, 0));
    }

    #pragma inline=no_body
    unsigned long strtoul(const char * _S, char ** _Endptr, 
                          int _Base)
    {       
      return (__iar_Stoul(_S, _Endptr, _Base));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long strtoll(const char * _S, char ** _Endptr,
                          int _Base)
        {       
            return (__iar_Stoll(_S, _Endptr, _Base));
        }

        #pragma inline=no_body
        unsigned long long strtoull(const char * _S, 
                                    char ** _Endptr, int _Base)
        {       
            return (__iar_Stoull(_S, _Endptr, _Base));
        }
        #pragma language=restore


  #pragma inline=no_body
  int abs(int i)
  {       
    return (i < 0 ? -i : i);
  }

  #pragma inline=no_body
  long labs(long i)
  {       
    return (i < 0 ? -i : i);
  }

      #pragma language=save
      #pragma language=extended
      #pragma inline=no_body
      long long llabs(long long i)
      {       
        return (i < 0 ? -i : i);
      }
      #pragma language=restore








 








 


 
 

 

  #pragma system_include






 















 





  #pragma system_include



 



#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
__intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
__intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

__intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;


 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

 
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);

 
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
__intrinsic __nounwind unsigned char __CLZ( unsigned long );

 

__intrinsic __nounwind int         __QCFlag( void );
__intrinsic __nounwind void __reset_QC_flag( void );

__intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
__intrinsic __nounwind unsigned long __REV( unsigned long );
__intrinsic __nounwind signed long __REVSH( short );

__intrinsic __nounwind unsigned long __REV16( unsigned long );
__intrinsic __nounwind unsigned long __RBIT( unsigned long );

__intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
__intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
__intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
__intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

__intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
__intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
__intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

__intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
__intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);


#pragma language=restore
















 
















 



void write_vtor (int);                                              





void vcan_cpy( uint8 *dst, uint8 *src, uint32 count);

void soft_delay_ms(uint32 ms);
void soft_delay_us(uint32 us);





 







 

























 


#pragma system_include   



    










 


    

 
    

 

     





    
 



 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 






 
  typedef signed char   int8_t;
  typedef unsigned char uint8_t;

  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;

  typedef signed int   int32_t;
  typedef unsigned int uint32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


 
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

 
  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore



 
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore

 
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore


 
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 

























 














 
 







 

























 
































































 








 




 

 

 

 
 





 


 
 




 




 

 


   




 




 


 







 

























 


#pragma system_include   




     

     
    





 

     



    







 
    

 

    



 

    
 
    typedef union
    {
        struct
        {
            uint32_t _reserved0: 27;              
            uint32_t Q: 1;                        
            uint32_t V: 1;                        
            uint32_t C: 1;                        
            uint32_t Z: 1;                        
            uint32_t N: 1;                        
        } b;                                    
        uint32_t w;                             
    } APSR_Type;


    
 
    typedef union
    {
        struct
        {
            uint32_t ISR: 9;                      
            uint32_t _reserved0: 23;              
        } b;                                    
        uint32_t w;                             
    } IPSR_Type;


    
 
    typedef union
    {
        struct
        {
            uint32_t ISR: 9;                      
            uint32_t _reserved0: 15;              
            uint32_t T: 1;                        
            uint32_t IT: 2;                       
            uint32_t Q: 1;                        
            uint32_t V: 1;                        
            uint32_t C: 1;                        
            uint32_t Z: 1;                        
            uint32_t N: 1;                        
        } b;                                    
        uint32_t w;                             
    } xPSR_Type;


    
 
    typedef union
    {
        struct
        {
            uint32_t nPRIV: 1;                    
            uint32_t SPSEL: 1;                    
            uint32_t FPCA: 1;                     
            uint32_t _reserved0: 29;              
        } b;                                    
        uint32_t w;                             
    } CONTROL_Type;

     


    



 

    
 
    typedef struct
    {
        volatile uint32_t ISER[1];                  
        uint32_t RESERVED0[31];
        volatile uint32_t ICER[1];                  
        uint32_t RSERVED1[31];
        volatile uint32_t ISPR[1];                  
        uint32_t RESERVED2[31];
        volatile uint32_t ICPR[1];                  
        uint32_t RESERVED3[31];
        uint32_t RESERVED4[64];
        volatile uint32_t IP[8];                    
    }  NVIC_Type;

     


    



 

    
 
    typedef struct
    {
        volatile const  uint32_t CPUID;                    
        volatile uint32_t ICSR;                     
        volatile uint32_t VTOR;                     
        volatile uint32_t AIRCR;                    
        volatile uint32_t SCR;                      
        volatile uint32_t CCR;                      
        uint32_t RESERVED1;
        volatile uint32_t SHP[2];                   
        volatile uint32_t SHCSR;                    
    } SCB_Type;

     





     









     

     





     



     


     

     


    



 

    
 
    typedef struct
    {
        volatile uint32_t CTRL;                     
        volatile uint32_t LOAD;                     
        volatile uint32_t VAL;                      
        volatile const  uint32_t CALIB;                    
    } SysTick_Type;

     




     

     

     



     



    





 
     


    



 

     



     



    





 
    
 



     
    



 

     
     


    




 
    static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
    {
        ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
    }


    




 
    static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
    {
        ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
    }


    








 
    static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
    {
        return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F))) ? 1 : 0));
    }


    




 
    static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
    {
        ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
    }


    




 
    static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
    {
        ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
    }


    







 
    static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
    {
        if(IRQn < 0)
        {
            ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
                                       (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ));
        }
        else
        {
            ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
                                      (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ));
        }
    }


    









 
    static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
    {

        if(IRQn < 0)
        {
            return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));
        }  
        else
        {
            return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));
        }  
    }


    


 
    static inline void NVIC_SystemReset(void)
    {
        __DSB();                                                     
 
        ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                       (1UL << 2));
        __DSB();                                                      
        while(1);                                                     
    }

     



     
    



 


    













 
    static inline uint32_t SysTick_Config(uint32_t ticks)
    {
        if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
        NVIC_SetPriority (SysTick_IRQn, (1 << 2) - 1);  
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                         (1UL << 1)   |
                         (1UL << 0);                     
        return (0);                                                   
    }


     




















 


extern int core_clk_khz;
extern int core_clk_mhz;
extern int bus_clk_khz;
extern int timer_clk_khz;

void start(void);           
void sysinit (void);        

void common_startup(void);  




   




 




 




 

#pragma language=extended



 




 

 
typedef struct
{
    volatile uint8_t CS;                                  
    volatile uint8_t C0;                                  
    volatile uint8_t C1;                                  
    volatile uint8_t C2;                                  
} ACMP_Type, *ACMP_MemMapPtr;



 




 


 



   




 




 

 
 
 
 



   


 
 
 
 
 
 
 



 




 


 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t SC1;                                
    volatile uint32_t SC2;                                
    volatile uint32_t SC3;                                
    volatile uint32_t SC4;                                
    volatile const  uint32_t R;                                  
    volatile uint32_t CV;                                 
    volatile uint32_t APCTL1;                             
    volatile uint32_t SC5;                                
} ADC_Type, *ADC_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    union                                             
    {
        struct                                            
        {
            volatile uint16_t DATAL;                              
            volatile uint16_t DATAH;                              
        } ACCESS16BIT;
        volatile uint32_t DATA;                               
        struct                                            
        {
            volatile uint8_t DATALL;                              
            volatile uint8_t DATALU;                              
            volatile uint8_t DATAHL;                              
            volatile uint8_t DATAHU;                              
        } ACCESS8BIT;
    };
    union                                             
    {
        struct                                            
        {
            volatile uint16_t GPOLYL;                             
            volatile uint16_t GPOLYH;                             
        } GPOLY_ACCESS16BIT;
        volatile uint32_t GPOLY;                              
        struct                                            
        {
            volatile uint8_t GPOLYLL;                             
            volatile uint8_t GPOLYLU;                             
            volatile uint8_t GPOLYHL;                             
            volatile uint8_t GPOLYHU;                             
        } GPOLY_ACCESS8BIT;
    };
    union                                             
    {
        volatile uint32_t CTRL;                               
        struct                                            
        {
            uint8_t RESERVED_0[3];
            volatile uint8_t CTRLHU;                              
        } CTRL_ACCESS8BIT;
    };
} CRC_Type, *CRC_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t PDOR;                               
    volatile  uint32_t PSOR;                               
    volatile  uint32_t PCOR;                               
    volatile  uint32_t PTOR;                               
    volatile const  uint32_t PDIR;                               
    volatile uint32_t PDDR;                               
    volatile uint32_t PIDR;                               
} FGPIO_Type, *FGPIO_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 



   


 
 
 
 
 
 
 
 
 



 




 


 
 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t SC;                                 
    volatile uint32_t CNT;                                
    volatile uint32_t MOD;                                
    struct                                            
    {
        volatile uint32_t CnSC;                               
        volatile uint32_t CnV;                                
    } CONTROLS[6];
    uint8_t RESERVED_0[16];
    volatile uint32_t CNTIN;                              
    volatile uint32_t STATUS;                             
    volatile uint32_t MODE;                               
    volatile uint32_t SYNC;                               
    volatile uint32_t OUTINIT;                            
    volatile uint32_t OUTMASK;                            
    volatile uint32_t COMBINE;                            
    volatile uint32_t DEADTIME;                           
    volatile uint32_t EXTTRIG;                            
    volatile uint32_t POL;                                
    volatile uint32_t FMS;                                
    volatile uint32_t FILTER;                             
    volatile uint32_t FLTCTRL;                            
    uint8_t RESERVED_1[4];
    volatile uint32_t CONF;                               
    volatile uint32_t FLTPOL;                             
    volatile uint32_t SYNCONF;                            
    volatile uint32_t INVCTRL;                            
    volatile uint32_t SWOCTRL;                            
    volatile uint32_t PWMLOAD;                            
} FTM_Type, *FTM_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 
 
 
 
 



 




 


 
 
 
 

 



   




   




 




 

 
typedef struct
{
    uint8_t RESERVED_0[1];
    volatile uint8_t FCCOBIX;                             
    volatile const  uint8_t FSEC;                                
    volatile uint8_t FCLKDIV;                             
    uint8_t RESERVED_1[1];
    volatile uint8_t FSTAT;                               
    uint8_t RESERVED_2[1];
    volatile uint8_t FCNFG;                               
    volatile uint8_t FCCOBLO;                             
    volatile uint8_t FCCOBHI;                             
    uint8_t RESERVED_3[1];
    volatile uint8_t FPROT;                               
    uint8_t RESERVED_4[3];
    volatile const  uint8_t FOPT;                                
} FTMRE_Type, *FTMRE_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t PDOR;                               
    volatile  uint32_t PSOR;                               
    volatile  uint32_t PCOR;                               
    volatile  uint32_t PTOR;                               
    volatile const  uint32_t PDIR;                               
    volatile uint32_t PDDR;                               
    volatile uint32_t PIDR;                               
} GPIO_Type, *GPIO_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 



   


 
 
 
 
 
 
 
 
 



 




 


 
 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t A1;                                  
    volatile uint8_t F;                                   
    volatile uint8_t C1;                                  
    volatile uint8_t S1;                                  
    volatile uint8_t D;                                   
    volatile uint8_t C2;                                  
    volatile uint8_t FLT;                                 
    volatile uint8_t RA;                                  
    volatile uint8_t SMB;                                 
    volatile uint8_t A2;                                  
    volatile uint8_t SLTH;                                
    volatile uint8_t SLTL;                                
} I2C_Type, *I2C_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 
 
 



 




 


 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t C1;                                  
    volatile uint8_t C2;                                  
    volatile uint8_t C3;                                  
    volatile uint8_t C4;                                  
    volatile uint8_t S;                                   
} ICS_Type, *ICS_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t SC;                                  
} IRQ_Type, *IRQ_MemMapPtr;



 




 


 



   




 




 

 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t PE;                                 
    volatile uint32_t ES;                                 
    volatile uint32_t SC;                                 
    volatile const  uint32_t SP;                                 
} KBI_Type, *KBI_MemMapPtr;



 




 


 



   




 




 

 
 
 
 



   


 
 
 
 
 
 
 



 




 


 
 
 



   




   




 




 

 
typedef struct
{
    uint8_t RESERVED_0[8];
    volatile const  uint16_t PLASC;                              
    volatile const  uint16_t PLAMC;                              
    volatile uint32_t PLACR;                              
} MCM_Type, *MCM_MemMapPtr;



 




 


 



   




 




 

 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t CANCTL0;                             
    volatile uint8_t CANCTL1;                             
    volatile uint8_t CANBTR0;                             
    volatile uint8_t CANBTR1;                             
    volatile uint8_t CANRFLG;                             
    volatile uint8_t CANRIER;                             
    volatile uint8_t CANTFLG;                             
    volatile uint8_t CANTIER;                             
    volatile uint8_t CANTARQ;                             
    volatile const  uint8_t CANTAAK;                             
    volatile uint8_t CANTBSEL;                            
    volatile uint8_t CANIDAC;                             
    uint8_t RESERVED_0[1];
    volatile uint8_t CANMISC;                             
    volatile const  uint8_t CANRXERR;                            
    volatile const  uint8_t CANTXERR;                            
    volatile uint8_t CANIDAR_BANK_1[4];                   
    volatile uint8_t CANIDMR_BANK_1[4];                   
    volatile uint8_t CANIDAR_BANK_2[4];                   
    volatile uint8_t CANIDMR_BANK_2[4];                   
    union                                             
    {
        volatile uint8_t REIDR0;                              
        volatile uint8_t RSIDR0;                              
    };
    union                                             
    {
        volatile uint8_t REIDR1;                              
        volatile uint8_t RSIDR1;                              
    };
    volatile uint8_t REIDR2;                              
    volatile uint8_t REIDR3;                              
    volatile uint8_t REDSR[8];                            
    volatile uint8_t RDLR;                                
    uint8_t RESERVED_1[1];
    volatile uint8_t RTSRH;                               
    volatile uint8_t RTSRL;                               
    union                                             
    {
        volatile uint8_t TEIDR0;                              
        volatile uint8_t TSIDR0;                              
    };
    union                                             
    {
        volatile uint8_t TEIDR1;                              
        volatile uint8_t TSIDR1;                              
    };
    volatile uint8_t TEIDR2;                              
    volatile uint8_t TEIDR3;                              
    volatile uint8_t TEDSR[8];                            
    volatile uint8_t TDLR;                                
    volatile uint8_t TBPR;                                
    volatile uint8_t TTSRH;                               
    volatile uint8_t TTSRL;                               
} MSCAN_Type, *MSCAN_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 

 



   




   




 




 

 
typedef struct
{
    volatile const  uint8_t BACKKEY0;                            
    volatile const  uint8_t BACKKEY1;                            
    volatile const  uint8_t BACKKEY2;                            
    volatile const  uint8_t BACKKEY3;                            
    volatile const  uint8_t BACKKEY4;                            
    volatile const  uint8_t BACKKEY5;                            
    volatile const  uint8_t BACKKEY6;                            
    volatile const  uint8_t BACKKEY7;                            
    uint8_t RESERVED_0[5];
    volatile const  uint8_t FPROT;                               
    volatile const  uint8_t FSEC;                                
    volatile const  uint8_t FOPT;                                
} NV_Type, *NV_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t CR;                                  
} OSC_Type, *OSC_MemMapPtr;



 




 


 



   




 




 

 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t MCR;                                
    uint8_t RESERVED_0[252];
    struct                                            
    {
        volatile uint32_t LDVAL;                              
        volatile const  uint32_t CVAL;                               
        volatile uint32_t TCTRL;                              
        volatile uint32_t TFLG;                               
    } CHANNEL[2];
} PIT_Type, *PIT_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 



   


 
 
 
 
 



 




 


 
 

 



   




   




 




 

 
typedef struct
{
    volatile uint8_t SPMSC1;                              
    volatile uint8_t SPMSC2;                              
} PMC_Type, *PMC_MemMapPtr;



 




 


 



   




 




 

 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t IOFLT0;                             
    volatile uint32_t IOFLT1;                             
    volatile uint32_t PUE0;                               
    volatile uint32_t PUE1;                               
    volatile uint32_t PUE2;                               
    volatile uint32_t HDRVE;                              
} PORT_Type, *PORT_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint32_t R1;                                 
    volatile const  uint32_t R2;                                 
} PWT_Type, *PWT_MemMapPtr;



 




 


 



   




 




 

 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile const  uint32_t ENTRY[1];                           
    volatile const  uint32_t TABLEMARK;                          
    uint8_t RESERVED_0[4036];
    volatile const  uint32_t SYSACCESS;                          
    volatile const  uint32_t PERIPHID4;                          
    volatile const  uint32_t PERIPHID5;                          
    volatile const  uint32_t PERIPHID6;                          
    volatile const  uint32_t PERIPHID7;                          
    volatile const  uint32_t PERIPHID0;                          
    volatile const  uint32_t PERIPHID1;                          
    volatile const  uint32_t PERIPHID2;                          
    volatile const  uint32_t PERIPHID3;                          
    volatile const  uint32_t COMPID[4];                          
} ROM_Type, *ROM_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 

 



   




   




 




 

 
typedef struct
{
    volatile uint32_t SC;                                 
    volatile uint32_t MOD;                                
    volatile const  uint32_t CNT;                                
} RTC_Type, *RTC_MemMapPtr;



 




 


 



   




 




 

 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile const  uint32_t SRSID;                              
    volatile uint32_t SOPT0;                              
    volatile uint32_t SOPT1;                              
    volatile uint32_t PINSEL;                             
    volatile uint32_t PINSEL1;                            
    volatile uint32_t SCGC;                               
    volatile const  uint32_t UUIDL;                              
    volatile const  uint32_t UUIDML;                             
    volatile const  uint32_t UUIDMH;                             
    volatile uint32_t CLKDIV;                             
} SIM_Type, *SIM_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t C1;                                  
    volatile uint8_t C2;                                  
    volatile uint8_t BR;                                  
    volatile const  uint8_t S;                                   
    uint8_t RESERVED_0[1];
    volatile uint8_t D;                                   
    uint8_t RESERVED_1[1];
    volatile uint8_t M;                                   
} SPI_Type, *SPI_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 



   


 
 
 
 
 
 
 



 




 


 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t BDH;                                 
    volatile uint8_t BDL;                                 
    volatile uint8_t C1;                                  
    volatile uint8_t C2;                                  
    volatile const  uint8_t S1;                                  
    volatile uint8_t S2;                                  
    volatile uint8_t C3;                                  
    volatile uint8_t D;                                   
} UART_Type, *UART_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 



   


 
 
 
 
 
 
 
 
 



 




 


 
 
 
 



   




   




 




 

 
typedef struct
{
    volatile uint8_t CS1;                                 
    volatile uint8_t CS2;                                 
    union                                             
    {
        volatile uint16_t CNT;                                
        struct                                            
        {
            volatile const  uint8_t CNTH;                                
            volatile const  uint8_t CNTL;                                
        } CNT8B;
    };
    union                                             
    {
        volatile uint16_t TOVAL;                              
        struct                                            
        {
            volatile uint8_t TOVALH;                              
            volatile uint8_t TOVALL;                              
        } TOVAL8B;
    };
    union                                             
    {
        volatile uint16_t WIN;                                
        struct                                            
        {
            volatile uint8_t WINH;                                
            volatile uint8_t WINL;                                
        } WIN8B;
    };
} WDOG_Type, *WDOG_MemMapPtr;



 




 


 



   




 




 

 
 
 
 
 
 
 
 
 
 
 



   


 
 
 
 
 



 




 


 
 



   




   




 

#pragma language=default



   




 




 




   



 



 



 

 










 



#pragma system_include


   

#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177






static uint32_t __get_xPSR(void)
{
  return __get_PSR();    
}







static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177




   

 







 

























 
































































 








 




 

 
 

 


 



 

 


 






 







 

























 
































































 








 




 

 
 

 




 

                

 














 




 







 




 



 




 





 



 




 
void assert_failed(char *, int);




 



                

 

































































 








 




 

 
 

 



                

 














 















 



 
typedef enum
{
     
    PTA0,  PTA1,  PTA2,  PTA3,  PTA4,  PTA5,  PTA6,  PTA7,

     
    PTB0,  PTB1,  PTB2,  PTB3,  PTB4,  PTB5,  PTB6,  PTB7,

     
    PTC0,  PTC1,  PTC2,  PTC3,  PTC4,  PTC5,  PTC6,  PTC7,

     
    PTD0,  PTD1,  PTD2,  PTD3,  PTD4,  PTD5,  PTD6,  PTD7,

     
    PTE0,  PTE1,  PTE2,  PTE3,  PTE4,  PTE5,  PTE6,  PTE7,

     
    PTF0,  PTF1,  PTF2,  PTF3,  PTF4,  PTF5,  PTF6,  PTF7,

     
    PTG0,  PTG1,  PTG2,  PTG3,  PTG4,  PTG5,  PTG6,  PTG7,

     
    PTH0,  PTH1,  PTH2,  PTH3,  PTH4,  PTH5,  PTH6,  PTH7,

     
    PTI0,  PTI1,  PTI2,  PTI3,  PTI4,  PTI5,  PTI6,  PTI7,

    PTXn_MAX

} PTXn_e;

 
typedef enum
{
    PTA, PTB, PTC, PTD, PTE, PTF, PTG, PTH, PTI,

    PTX_MAX,
} PTX_e;

 
typedef enum
{
    PT0 , PT1 , PT2 , PT3 , PT4 , PT5 , PT6 , PT7 ,
} PTn_e;






 
typedef enum
{
    PULLUP_DISBLE ,     
    PULLUP_ENBLE ,     


} port_pullup_cfg;



extern void port_pull   (PTXn_e ptxn, char  cfg);
extern char port_hdrve  (PTXn_e ptxn, char  cfg);




 

 







 















 















                

 

                

 
                



 

                

 



                

 


                

 

                

 

                

 

                

 

                

 

                

 

                

 


                 















 



typedef FTM_Type    *FTMn_e;




typedef enum
{

    FTM_CH0,
    FTM_CH1,
    FTM_CH2,
    FTM_CH3,
    FTM_CH4,
    FTM_CH5,
    FTM_CH6,
    FTM_CH7,

} FTM_CHn_e;


typedef enum
{
    FTM_PS_1,
    FTM_PS_2,
    FTM_PS_4,
    FTM_PS_8,
    FTM_PS_16,
    FTM_PS_32,
    FTM_PS_64,
    FTM_PS_128,

    FTM_PS_MAX,
} FTM_PS_e;     

extern FTM_MemMapPtr FTMN[3];

 



extern void  ftm_pwm_init (FTMn_e, FTM_CHn_e, uint32 freq, uint32 duty);  
extern void  ftm_pwm_duty (FTMn_e, FTM_CHn_e,              uint32 duty);  


extern void  ftm_pwm_finit(FTMn_e, FTM_CHn_e, uint32 freq, float duty) ;
extern void  ftm_pwm_fduty(FTMn_e, FTM_CHn_e,              float duty);  

extern void  ftm_pwm_freq (FTMn_e,            uint32 freq);               


 

typedef enum
{
    FTM_Rising,               
    FTM_Falling,              
    FTM_Rising_or_Falling     
} FTM_Input_cfg;


extern void     ftm_input_init  (FTMn_e, FTM_CHn_e, FTM_Input_cfg, FTM_PS_e ps);    
extern uint16   ftm_input_get   (FTMn_e, FTM_CHn_e);                                
extern void     ftm_input_clean (FTMn_e );                                          

extern void     FTM1_Input_test_handler(void);                      


void ftm_enable_irq(FTMn_e ftmn);
void ftm_clear_overflag(FTMn_e ftmn);
void ftm_clean(FTMn_e ftmn);

void     ftm_pulse_init(FTMn_e ftmn, FTM_PS_e ps, PTXn_e tclk_ptxn);
uint16_t ftm_pulse_get(FTMn_e ftmn);

void    ftm_pulse_mux(FTMn_e ftmn, PTXn_e ptxn);












static uint32 ftm_mod[3];






 
static void ftm_port_mux(FTMn_e ftmn, FTM_CHn_e ch)
{
     
    switch((uint32_t)ftmn)
    {
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        ((((SIM_Type *)(0x40048000u)))->SCGC) |= 0x20u;     
        switch(ch)
        {
        case  FTM_CH0:
            if(PTA0 == PTA0) (((((SIM_Type *)(0x40048000u)))->PINSEL)) &= ~(1<<(8));
            else if(PTA0 == PTB2)(((((SIM_Type *)(0x40048000u)))->PINSEL)) |= (1<<(8));

            break;
        case  FTM_CH1:
            if(PTB3 == PTA1) (((((SIM_Type *)(0x40048000u)))->PINSEL)) &= ~(1<<(9));
            else if(PTB3 == PTB3) (((((SIM_Type *)(0x40048000u)))->PINSEL)) |= (1<<(9));
            break;

        }
        break;
    case (uint32_t)((FTM_Type *)(0x40039000u)):
        ((((SIM_Type *)(0x40048000u)))->SCGC) |= 0x40u;       
        switch(ch)
        {
        case  FTM_CH0:
            if(PTH2 == PTC4) (((((SIM_Type *)(0x40048000u)))->PINSEL)) &= ~(1<<(10));
            else if(PTH2 == PTH2) (((((SIM_Type *)(0x40048000u)))->PINSEL)) |= (1<<(10));
            break;
        case  FTM_CH1:
            if(PTC5 == PTC5) (((((SIM_Type *)(0x40048000u)))->PINSEL)) &= ~(1<<(11));
            else if(PTC5 == PTE7) (((((SIM_Type *)(0x40048000u)))->PINSEL)) |= (1<<(11));
            break;

        }

        break;
    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        ((((SIM_Type *)(0x40048000u)))->SCGC) |= 0x80u;           

        switch(ch)
        {
        case  FTM_CH0:
            ((((SIM_Type *)(0x40048000u)))->PINSEL1) &= ~0x3u;     
            if(PTC0 == PTC0) ((((SIM_Type *)(0x40048000u)))->PINSEL1) |= (((uint32_t)(((uint32_t)(0))<<0))&0x3u);
            else if(PTC0 == PTF0) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(2))<<0))&0x3u);
            else if(PTC0 == PTH0) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(1))<<0))&0x3u);

            break;
        case  FTM_CH1:
            ((((SIM_Type *)(0x40048000u)))->PINSEL1) &= ~0xCu;     
            if(PTH1 == PTC1) ((((SIM_Type *)(0x40048000u)))->PINSEL1) |= (((uint32_t)(((uint32_t)(0))<<2))&0xCu);
            else if(PTH1 == PTF1) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(2))<<2))&0xCu);
            else if(PTH1 == PTH1) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(1))<<2))&0xCu);
            break;
        case  FTM_CH2:
            ((((SIM_Type *)(0x40048000u)))->PINSEL1) &= ~0x30u;     
            if(PTC2 == PTC2) ((((SIM_Type *)(0x40048000u)))->PINSEL1) |= (((uint32_t)(((uint32_t)(0))<<4))&0x30u);
            else if(PTC2 == PTD0) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(1))<<4))&0x30u);
            else if(PTC2 == PTG4) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(2))<<4))&0x30u);
            break;
        case  FTM_CH3:
            ((((SIM_Type *)(0x40048000u)))->PINSEL1) &= ~0xC0u;     
            if(PTC3 == PTC3) ((((SIM_Type *)(0x40048000u)))->PINSEL1) |= (((uint32_t)(((uint32_t)(0))<<6))&0xC0u);
            else if(PTC3 == PTD1) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(1))<<6))&0xC0u);
            else if(PTC3 == PTG5) ((SIM_Type *)(0x40048000u))->PINSEL1 |= (((uint32_t)(((uint32_t)(2))<<6))&0xC0u);
            break;
        case  FTM_CH4:
            if(PTB4 == PTB4)
            {
                (((((SIM_Type *)(0x40048000u)))->SOPT0)) &= ~(1<<(1));
                (((((SIM_Type *)(0x40048000u)))->PINSEL1)) &= ~(1<<(8));
            }
            else if(PTB4 == PTG6)   (((((SIM_Type *)(0x40048000u)))->PINSEL1)) |= (1<<(8));
            break;
        case  FTM_CH5:
            if(PTB5 == PTB5)        (((((SIM_Type *)(0x40048000u)))->PINSEL1)) &= ~(1<<(9));
            else if(PTB5 == PTG7)   (((((SIM_Type *)(0x40048000u)))->PINSEL1)) |= (1<<(9));
            break;
        }

    default:
        break;
    }
}


static inline void ftm_enable_clk(FTMn_e ftmn)
{
     
    (((((SIM_Type *)(0x40048000u)))->SCGC)) |= (1<<((5 + ( (uint32_t)(((ftmn)-((FTM_Type *)(0x40038000u)))/(((FTM_Type *)(0x40039000u))-((FTM_Type *)(0x40038000u))) ) ))));
}


void ftm_enable_irq(FTMn_e ftmn)
{
    NVIC_EnableIRQ((IRQn_t)(FTM0_IRQn + ( (uint32_t)(((ftmn)-((FTM_Type *)(0x40038000u)))/(((FTM_Type *)(0x40039000u))-((FTM_Type *)(0x40038000u))) ) )));     
}


void ftm_disable_irq(FTMn_e ftmn)
{
    NVIC_DisableIRQ((IRQn_t)(FTM0_IRQn + ( (uint32_t)(((ftmn)-((FTM_Type *)(0x40038000u)))/(((FTM_Type *)(0x40039000u))-((FTM_Type *)(0x40038000u))) ) )));     
}


void ftm_clear_overflag(FTMn_e ftmn)
{
    if(ftmn->SC  | 0x80u)
    {
        ftmn->SC &=  ~0x80u;
    }
}

void  ftm_pwm_finit(FTMn_e ftmn, FTM_CHn_e ch, uint32 freq, float duty)  
{
    uint32 clk_hz ;
    uint16 mod;
    uint8  ps;
    uint16 cv;


     
    ftm_port_mux(ftmn, ch);

     
    
    
    
    

    
    
    
    
    

    
    clk_hz = (bus_clk_khz * 1000) ;     

    mod = (clk_hz >> 16 ) / freq ;      
    ps = 0;
    while((mod >> ps) >= 1)             
    {
        ps++;
    }

    if (!(ps <= 0x07)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 183);                 

    mod = (clk_hz >> ps) / freq;        
    ftm_mod[( (uint32_t)(((ftmn)-((FTM_Type *)(0x40038000u)))/(((FTM_Type *)(0x40039000u))-((FTM_Type *)(0x40038000u))) ) ) ] = mod;

    cv = (uint16)((duty * (float)(mod - 0 + 1)) / 100);


     
    
    ((ftmn)->CONTROLS[ch]. CnSC) &= ~0x4u;
    ((ftmn)->CONTROLS[ch]. CnSC)  = 0x20u | 0x8u;

     

    

    ((ftmn)->SC) = 0;

    ((ftmn)->MOD)   = mod;                        
    if(ftmn == ((FTM_Type *)(0x4003A000u)))
    {
        ((ftmn)->CNTIN) = 0;                          
    }
    ((ftmn)->CONTROLS[ch]. CnV) = cv;
    ((ftmn)->CNT)   = 0;                          

    ((ftmn)->SC)    = ( 0
                            
                            | (((uint32_t)(((uint32_t)(ps))<<0))&0x7u)             
                            | (((uint32_t)(((uint32_t)(1))<<3))&0x18u)            
                            
                          );

}










 
void ftm_pwm_init(FTMn_e ftmn, FTM_CHn_e ch, uint32 freq, uint32 duty)
{
    uint32 clk_hz ;
    uint16 mod;
    uint8  ps;
    uint16 cv;



     
    ftm_port_mux(ftmn, ch);

     
    
    
    
    

    
    
    
    
    

    
    clk_hz = (bus_clk_khz * 1000) ;     

    mod = (clk_hz >> 16 ) / freq ;      
    ps = 0;
    while((mod >> ps) >= 1)             
    {
        ps++;
    }

    if (!(ps <= 0x07)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 263);                 

    mod = (clk_hz >> ps) / freq;        

    switch((uint32_t)ftmn)                        
    {
        
        
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        ftm_mod[0] = mod;
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;

    case (uint32_t)((FTM_Type *)(0x40039000u)):
        ftm_mod[1] = mod;
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;

    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        ftm_mod[2] = mod;
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;


    default:
        break;
    }

     
    
    ((ftmn)->CONTROLS[ch]. CnSC) &= ~0x4u;
    ((ftmn)->CONTROLS[ch]. CnSC)  = 0x20u | 0x8u;
    
    
    

     
    

    

    ((ftmn)->SC) = 0;

    ((ftmn)->MOD)   = mod;                        
    if(ftmn == ((FTM_Type *)(0x4003A000u)))
    {
        ((ftmn)->CNTIN) = 0;                          
    }
    ((ftmn)->CONTROLS[ch]. CnV) = cv;
    ((ftmn)->CNT)   = 0;                          

    ((ftmn)->SC)    = ( 0
                            
                            | (((uint32_t)(((uint32_t)(ps))<<0))&0x7u)             
                            | (((uint32_t)(((uint32_t)(1))<<3))&0x18u)            
                            
                          );


}









 
void ftm_pwm_duty(FTMn_e ftmn, FTM_CHn_e ch, uint32 duty)
{
    uint32 cv;
    uint32 mod = 0;
    switch((uint32_t)ftmn)
    {
        
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        if (!(duty <= 10000u)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 342);     
        break;

    case (uint32_t)((FTM_Type *)(0x40039000u)):
        if (!(duty <= 10000u)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 346);     
        break;
    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        if (!(duty <= 10000u)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 349);     
        break;

    default:
        if (!(0)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 353);
        break;
    }


    
    switch((uint32_t)ftmn)
    {
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        mod = ftm_mod[0];
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;

    case (uint32_t)((FTM_Type *)(0x40039000u)):
        mod = ftm_mod[1];
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;

    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        mod = ftm_mod[2];
        cv = (duty * (mod - 0 + 1)) / 10000u;
        break;

    default:
        if (!(0)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 401);
        break;
    }

    
    ((ftmn)->CONTROLS[ch]. CnV) = cv;

    
}








 
void ftm_pwm_fduty(FTMn_e ftmn, FTM_CHn_e ch, float duty)
{
    uint32 cv;
    uint32 mod = 0;

    if (!(duty <= 100.0)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 425);     



    duty = duty/100.0;
    
    switch((uint32_t)ftmn)
    {
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        mod = ftm_mod[0];
        cv = (uint32_t)(duty * (mod - 0 + 1)) ;
        break;

    case (uint32_t)((FTM_Type *)(0x40039000u)):
        mod = ftm_mod[1];
        cv = (uint32_t)(duty * (mod - 0 + 1)) ;
        break;

    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        mod = ftm_mod[2];
        cv = (uint32_t)(duty * (mod - 0 + 1)) ;
        break;

    default:
        if (!(0)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 456);
        break;
    }

    
    ((ftmn)->CONTROLS[ch]. CnV) = cv;

    
}








 
void ftm_pwm_freq(FTMn_e ftmn, uint32 freq)             
{
    uint32 clk_hz = (bus_clk_khz * 1000) >> 1;        
    uint32 mod;
    uint8 ps;

     
    
    clk_hz = (bus_clk_khz * 1000) ;     

    mod = (clk_hz >> 16 ) / freq ;      
    ps = 0;
    while((mod >> ps) >= 1)             
    {
        ps++;
    }

    if (!(ps <= 0x07)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 491);                 

    mod = (clk_hz >> ps) / freq;        

    switch((uint32_t)ftmn)
    {
    case (uint32_t)((FTM_Type *)(0x40038000u)):
        ftm_mod[0] = mod;
        break;

    case (uint32_t)((FTM_Type *)(0x40039000u)):
        ftm_mod[1] = mod;
        break;

    case (uint32_t)((FTM_Type *)(0x4003A000u)):
        ftm_mod[2] = mod;
        break;

    default:
        if (!(0)) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 510);
        break;
    }

     
    ((ftmn)->SC)    = ( 0
                            
                            | (((uint32_t)(((uint32_t)(ps))<<0))&0x7u)             
                            | (((uint32_t)(((uint32_t)(1))<<3))&0x18u)            
                            
                          );
    ((ftmn)->CNTIN) = 0;      
    ((ftmn)->MOD)   = mod;    
    ((ftmn)->CNT)   = 0;      
}















 
void ftm_input_init(FTMn_e ftmn, FTM_CHn_e ch, FTM_Input_cfg cfg, FTM_PS_e ps)
{
    if (!((ftmn == ((FTM_Type *)(0x4003A000u))))) assert_failed("C:\\Users\\Administrator\\Desktop\\\320\302\275\250\316\304\274\376\274\320 (2)\\\312\322\315\342\271\342\265\347\265\245\306\254\273\372\263\314\320\362\\Chip\\src\\KEA_ftm.c", 543);  

     
    ftm_port_mux(ftmn, ch);

     
    switch(cfg)
    {
        

        
        

    case FTM_Rising:    
        ((ftmn)->CONTROLS[ch]. CnSC) |=  ( 0x4u  | 0x40u );                   
        ((ftmn)->CONTROLS[ch]. CnSC) &= ~( 0x8u  | 0x20u | 0x10u); 
        break;

    case FTM_Falling:   
        ((ftmn)->CONTROLS[ch]. CnSC) |= (0x8u  | 0x40u );                    
        ((ftmn)->CONTROLS[ch]. CnSC) &= ~( 0x4u | 0x20u | 0x10u); 
        break;

    case FTM_Rising_or_Falling: 
        ((ftmn)->CONTROLS[ch]. CnSC) |=  ( 0x8u | 0x4u  | 0x40u ); 
        ((ftmn)->CONTROLS[ch]. CnSC) &= ~( 0x20u  | 0x10u); 
        break;
    }

    ((ftmn)->SC) = 0;
    ((ftmn)->MODE)  =    (0
                              | 0x4u  
                              
                             );


    ((ftmn)->COMBINE) = 0;
    
    ((ftmn)->CNTIN)   = 0;

    ((ftmn)->STATUS)  = 0x00;               

    ((ftmn)->MOD)     = 0xFFFFu;

    ((ftmn)->SC) = ( 0
                         | (((uint32_t)(((uint32_t)(0x1))<<3))&0x18u)       
                         | (((uint32_t)(((uint32_t)(ps))<<0))&0x7u)          
                       );

    ((ftmn)->MODE)  |=    (0
                               
                               | 0x1u   
                              );

    
    
}









 
uint16   ftm_input_get (FTMn_e ftmn, FTM_CHn_e ch)
{
    return (uint16)((ftmn)->CONTROLS[ch]. CnV);   
}

void     ftm_input_clean (FTMn_e ftmn)
{
    ((ftmn)->CNT) = 0;               
}







 
void ftm2_Input_test_handler(void)
{
    uint8 s = ((((FTM_Type *)(0x4003A000u)))->STATUS);             
    uint8 CHn;

    ((((FTM_Type *)(0x4003A000u)))->STATUS) = 0x00;             

    CHn = 0;
    if( s & (1 << CHn) )
    {
        
         

         
        

    }

     
    CHn = 1;
    if( s & (1 << CHn) )
    {
        
         


         
        
        
    }
}






void ftm_pulse_mux(FTMn_e ftmn, PTXn_e ptxn)
{
    int n = ( (uint32_t)(((ftmn)-((FTM_Type *)(0x40038000u)))/(((FTM_Type *)(0x40039000u))-((FTM_Type *)(0x40038000u))) ) );

    ftm_enable_clk(ftmn);
    ((SIM_Type *)(0x40048000u))->PINSEL &= ~(0x3000000u << (n * 2) );
    switch(ptxn)
    {
    case  PTA5:
        ((SIM_Type *)(0x40048000u))->PINSEL |= ((((uint32_t)(((uint32_t)(0))<<24))&0x3000000u) << (n * 2) );
        break;
    case  PTE0:
        ((SIM_Type *)(0x40048000u))->PINSEL |= ((((uint32_t)(((uint32_t)(1))<<24))&0x3000000u) << (n * 2) );
        break;
    case  PTE7:
        ((SIM_Type *)(0x40048000u))->PINSEL |= ((((uint32_t)(((uint32_t)(2))<<24))&0x3000000u) << (n * 2) );
        break;
    default:
        break;

    }
}

void ftm_pulse_init(FTMn_e ftmn, FTM_PS_e ps, PTXn_e ptxn)
{

    ftm_pulse_mux(ftmn, ptxn);


    ftmn->CNT = 0;
    ftmn->SC &=  ~(0x7u | 0x18u);
    ftmn->SC |=   ( 0
                    | (((uint32_t)(((uint32_t)(ps))<<0))&0x7u)
                    | (((uint32_t)(((uint32_t)(3))<<3))&0x18u)      
                  );



}

uint16_t ftm_pulse_get(FTMn_e ftmn)
{
    return ftmn->CNT ;
}

void ftm_clean(FTMn_e ftmn)
{
    ftmn->CNT = 0 ;
}


