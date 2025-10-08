#ifndef BONUS_H
#define BONUS_H

#include <stdint.h>

#define TIMER_BASEADDR  0x43C10000
#define TIMER_CONTROL_REG     0x00 //reg0
#define TIMER_SET_REG         0x04 //reg1
#define TIMER_VALUE_REG       0x08 //reg2
#define BONUS_INCR_REG        0x0C //reg3

void Timer_Start();

void Timer_Stop();

void Timer_Reset(uint32_t value);

uint32_t Timer_GetValue();

void Timer_AddBonus(uint32_t bonus);

uint32_t GetValue();


#endif
