#include "bonustimer.h"

#include "xparameters.h"
//#include "xgpio.h"
#include "xil_io.h"
//#include "math.h"
#include "xil_printf.h"
//#include "xil_cache.h"


void Timer_Start()
{
    Xil_Out32(TIMER_BASEADDR + TIMER_CONTROL_REG, 0x1);
}


void Timer_Stop()
{
    Xil_Out32(TIMER_BASEADDR + TIMER_CONTROL_REG, 0x0);
}


void Timer_Reset(uint32_t value)
{
    Xil_Out32(TIMER_BASEADDR + TIMER_SET_REG, value);
    Xil_Out32(TIMER_BASEADDR + TIMER_CONTROL_REG, 0x2);
}


uint32_t Timer_GetValue()
{
    return Xil_In32(TIMER_BASEADDR + TIMER_SET_REG);
//	volatile uint32_t *timer_reg = (uint32_t *)(TIMER_BASEADDR + TIMER_CONTROL_REG);
//
//	xil_printf("Writing to timer register...\r\n");
//	*timer_reg = 0x12345678;
//
//	xil_printf("Reading back value...\r\n");
//	uint32_t read_val = *timer_reg;
//
//	xil_printf("Read Value: 0x%08X\r\n", read_val);
}


void Timer_AddBonus(uint32_t bonus)
{
    Xil_Out32(TIMER_BASEADDR + BONUS_INCR_REG, bonus);
}


uint32_t GetValue()
{
    return Xil_In32(TIMER_BASEADDR + TIMER_VALUE_REG);
}






