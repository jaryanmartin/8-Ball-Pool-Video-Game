#ifndef INTERRUPT_H
#define INTERRUPT_H

#include "xparameters.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
//#include "gamestate.h"
//#include "objMoves.h"


//typedef enum {
//    GAME_START,
//    CUEBALL_POCKETED,
//    NORMAL_GAMEPLAY
//} GameState;
//
//extern volatile GameState current_game_state;

#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define TMR_DEVICE_ID		XPAR_TMRCTR_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
#define LEDS_DEVICE_ID		XPAR_LED_CONTROLLER_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

#define BTN_INT 			XGPIO_IR_CH1_MASK
#define TMR_LOAD			0xF8000000

#define BTN_RIGHT_MASK 0x0008
#define BTN_LEFT_MASK 0x0004
#define BTN_UP_MASK 0x0010
#define BTN_DOWN_MASK 0x0002
#define BTN_CENTER_MASK 0x0001
extern bool move_stick;

extern XGpio LEDInst, BTNInst;
extern XScuGic INTCInst;
extern XTmrCtr TMRInst;

extern volatile u32 btn4_press_start;
extern volatile u32 btn4_press_end;
extern volatile bool long_press_flag;
extern int menu_option;
extern int setting_option;
extern int volume_option;
extern int state_counter;
extern int NUM_BYTES_BUFFER;
extern bool foul_checked;
extern int break_counter;
extern int init_counter;

void BTN_Intr_Handler(void *InstancePtr);
void TMR_Intr_Handler(void *data);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr);
unsigned char gpio_init(void);
int TMR_Int(void);


#endif
