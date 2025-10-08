//// File to test the LFSR number generator hardware block
//#include <stdio.h>
//#include "xil_types.h"
//#include "xtmrctr.h"
//#include "xparameters.h"
//#include "xgpio.h"
//#include "xil_printf.h"
//#include "xil_io.h"
//#include "xil_exception.h"
//#include "xscugic.h"
//#include "xil_cache.h"
//#include <cstdlib>
//#include <sleep.h>
//
//volatile bool TIMER_INTR_FLG;
//XScuGic InterruptController; /* Instance of the Interrupt Controller */
//static XScuGic_Config *GicConfig;/* The configuration parameters of thecontroller */
//int NUM_BYTES_BUFFER = 5242880;
//unsigned int lfsr_value;
//
//#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
//#define TMR_DEVICE_ID		XPAR_TMRCTR_0_DEVICE_ID
//#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
//#define LEDS_DEVICE_ID		XPAR_AXI_GPIO_1_DEVICE_ID
//#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
//#define INTC_TMR_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
//#define BTN_INT 			XGPIO_IR_CH1_MASK
//#define TMR_LOAD			0xF8000000
//#define BTN_RIGHT_MASK 0x8
//#define BTN_LEFT_MASK 0x4
//
//const int height = 1024;
//const int width = 1280;
//int * image_buffer_pointer = (int *)0x00900000;
//int start[5] = {0, 256, 512, 768, 1024};
//unsigned int Barcolors[5] = {0xFF0000FF, 0xFFFFFFFF, 0x0000FFFF, 0x00FF00FF, 0x00FFFF00};
//#define BTN_LEFT_CHANNEL 1
//#define BTN_RIGHT_CHANNEL 2
//#define LFSR_BASE_ADDR  0x43C00000
//bool button_pressed = 0;
//
//XGpio LEDInst, BTNInst;
//XScuGic INTCInst;
//XTmrCtr TMRInst;
//static int led_data;
//static int btn_value;
//static int tmr_count;
//
//
//void Timer_InterruptHandler(XTmrCtr *data, u8 TmrCtrNumber)
//{
//	XTmrCtr_Stop(data,TmrCtrNumber);
//	XTmrCtr_Reset(data,TmrCtrNumber);
//	//Update Stuff
//	TIMER_INTR_FLG = true;
//}
//
//int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr){
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//	(Xil_ExceptionHandler) XScuGic_InterruptHandler,
//	XScuGicInstancePtr);
//	Xil_ExceptionEnable();
//	return XST_SUCCESS;
//}
//
///*Setup all interrupts of the system*/
//int ScuGicInterrupt_Init(u16 DeviceId,XTmrCtr *TimerInstancePtr)
//{
//	int Status;
//	GicConfig = XScuGic_LookupConfig(DeviceId);
//	if (NULL == GicConfig) {
//		return XST_FAILURE;
//	}
//	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
//	GicConfig->CpuBaseAddress);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	Status = SetUpInterruptSystem(&InterruptController);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	/*Connect a device driver handler that will be called when an interrupt for the device occurs, the device driver handler performs the specific interrupt processing for the device*/
//	Status = XScuGic_Connect(&InterruptController,
//	61,
//	(Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
//	(void *)TimerInstancePtr);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//
//	return XST_SUCCESS;
//}
//
//void BTN_Intr_Handler(void *InstancePtr)
//{
//	// Disable GPIO interrupts
//	XGpio_InterruptDisable(&BTNInst, BTN_INT);
//	//XGpio *GpioPtr = (XGpio *)InstancePtr;
//
//	// Read the state of the buttons
//	btn_value = XGpio_DiscreteRead(&BTNInst, BTN_INT);
//
//	// Ignore additional button presses
//	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=
//			BTN_INT) {
//			return;
//		}
//
//    if (btn_value == 0b00001) {
//    	button_pressed = 1;
//    	lfsr_value = Xil_In32(LFSR_BASE_ADDR);
//		usleep(100000);  // 1ms delay
//		xil_printf("LFSR Output: %u\r\n", lfsr_value);
//    }
//
//    // Clear and re-enable interrupts
//    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);
//    XGpio_InterruptEnable(&BTNInst, BTN_INT);
//}
//
//void TMR_Intr_Handler(void *data)
//{
//	if (XTmrCtr_IsExpired(&TMRInst,0)){
//		// Once timer has expired 3 times, stop, increment counter
//		// reset timer and start running again
//		if(tmr_count == 3){
//			XTmrCtr_Stop(&TMRInst,0);
//			tmr_count = 0;
//			led_data++;
//			XGpio_DiscreteWrite(&LEDInst, 1, led_data);
//			XTmrCtr_Reset(&TMRInst,0);
//			XTmrCtr_Start(&TMRInst,0);
//
//		}
//		else tmr_count++;
//	}
//}
//
//int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
//{
//	// Enable interrupt
//	XGpio_InterruptEnable(&BTNInst, BTN_INT);
//	XGpio_InterruptGlobalEnable(&BTNInst);
//
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
//			 	 	 	 	 	 XScuGicInstancePtr);
//	Xil_ExceptionEnable();
//
//
//	return XST_SUCCESS;
//
//}
//
//int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr)
//{
//	XScuGic_Config *IntcConfig;
//	int status;
//
//	xil_printf("DEBUG: Starting Interrupt Initialization...\n");
//
//	// Interrupt controller initialisation
//	IntcConfig = XScuGic_LookupConfig(DeviceId);
//	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
//	if(status != XST_SUCCESS)
//		{
//			xil_printf("ERROR: Interrupt Controller Initialization Failed!\n");
//			return XST_FAILURE;
//		}
//
//	// Call to interrupt setup
//	status = InterruptSystemSetup(&INTCInst);
//	if(status != XST_SUCCESS)
//		{
//			xil_printf("ERROR: Interrupt System Setup Failed!\n");
//			return XST_FAILURE;
//		}
//
//	// Connect GPIO interrupt to handler
//	status = XScuGic_Connect(&INTCInst,
//					  	  	 INTC_GPIO_INTERRUPT_ID,
//					  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
//					  	  	 (void *)GpioInstancePtr);
//	if(status != XST_SUCCESS)
//		{
//			xil_printf("ERROR: GPIO Interrupt Connection Failed!\n");
//			return XST_FAILURE;
//		}
//
//	// Enable GPIO interrupts interrupt
//	XGpio_InterruptEnable(GpioInstancePtr, 1);
//	XGpio_InterruptGlobalEnable(GpioInstancePtr);
//
//	// Enable GPIO and timer interrupts in the controller
//	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
//
//	//XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);
//
//	xil_printf("DEBUG: Interrupt Setup Complete\n");
//	return XST_SUCCESS;
//}
//
//
//int main()
//{
//
//	XTmrCtr TimerInstancePtr;
//	int xStatus, status;
//
//	xil_printf("step 1\n");
//	// Initialize Push Buttons
//	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
//	if(status != XST_SUCCESS) return XST_FAILURE;
//
//	xil_printf("step 2\n");
//	// Set all buttons direction to inputs
//	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
//
//	//-----------Setup Timer Interrupt---------------------------------------
//
//	xStatus = XTmrCtr_Initialize(&TimerInstancePtr,XPAR_AXI_TIMER_0_DEVICE_ID);
//
//	XTmrCtr_SetHandler(&TimerInstancePtr,
//	(XTmrCtr_Handler)Timer_InterruptHandler,
//	&TimerInstancePtr);
//
//	//Reset Values
//	XTmrCtr_SetResetValue(&TimerInstancePtr,
//	0, //Change with generic value
//	//0xFFF0BDC0);
//	//0x23C34600);
//	0xDC3CB9FF);
//	//Interrupt Mode and Auto reload
//	XTmrCtr_SetOptions(&TimerInstancePtr,
//	XPAR_AXI_TIMER_0_DEVICE_ID,
//	(XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION ));
//
//	xStatus=ScuGicInterrupt_Init(XPAR_PS7_SCUGIC_0_DEVICE_ID,&TimerInstancePtr);
//
//	// Initialize interrupt controller
//	status = IntcInitFunction(INTC_DEVICE_ID, &TMRInst, &BTNInst);
//	if(status != XST_SUCCESS) return XST_FAILURE;
//
//	// This code below samples 10000 values of the lfsr and increments the index of the array for each value sampled
//	// Maximum randomness should be a full spread , with no numbers being favoured over other numbers
//	// therefore each index should be sampled roughly 10 times ( 10000 / 1024 )
//
//	int x[1024];
//	for(int i=0;i<1024;i++){
//		x[i] = 0;
//	}
//	for(int i=0;i<10000;i++){
//		lfsr_value = Xil_In32(LFSR_BASE_ADDR);
//		x[lfsr_value]++;
//	}
//	for(int i=0;i<1024;i++){
//		xil_printf("%d\r\n",x[i]);
//	}
//
//	while(1){
//
//	}
//
//	return 0;
//}
