#include "btn_interrupts.h"
#include "math.h"
#include "render.h"
#include "movements.h"
#include "states.h"

#define PI 3.14159265
#define MAX_POWER 50.0
#define POWER_STEP 5.0


XGpio LEDInst;
XGpio BTNInst;
XScuGic INTCInst;
XTmrCtr TMRInst;

static int led_data;
static int btn_value;
static int tmr_count;

volatile int btn_flag = 0;
//volatile GameState currentState = GAME_START;

//volatile int hit_power = 25;
//volatile bool can_place_cueball = false;
//volatile bool cueball_start_mode = true;
//volatile bool cueball_pocket_mode = true;
volatile float cuestick_power = 0.0;


bool ball_finalpos = false;
bool stick_finalpos = false;
bool ball_hit = false;
bool move_stick;
//bool any_ball_moving = false;

int menu_option = 0;
int volume_option = 0;
int setting_option = 0;
int state_counter = 0;
int i = 0;
int init_counter = 0;
int break_counter = 1;
int NUM_BYTES_BUFFER = 5242880;

volatile u32 btn4_press_start = 0;
volatile u32 btn4_press_end = 0;
volatile bool long_press_flag = false;


void BTN_Intr_Handler(void *InstancePtr)
{
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);
	//XGpio *GpioPtr = (XGpio *)InstancePtr;

	// Read the state of the buttons
	btn_value = XGpio_DiscreteRead(&BTNInst, BTN_INT);

//	if(btn_value != 0)
//		{
//			move_stick = true;
//		}
//	else
//	{
//		move_stick = false;
//	}

	// The state of the game is in the initial state
	if (currentState == INIT_STATE)
	{
		if (btn_value == BTN_CENTER_MASK || btn_value == BTN_LEFT_MASK || btn_value == BTN_RIGHT_MASK || btn_value == BTN_UP_MASK || btn_value == BTN_DOWN_MASK)
		{
			changeState(MENU_STATE);
			changeBoxCoord(50, 376, 288, 73);
		}
	}

	// The state of the game is in the menu state
	else if (currentState == MENU_STATE)
	{

			// Select the present option
			if (btn_value == BTN_CENTER_MASK)
			{

				// Trigger Running State
				if (menu_option == 0)
				{
					xil_printf("Play Game!\r\n");
					//changeState(RUNNING_STATE);
					init_counter = 0;
					changeState(RUNNING_STATE);
					changePhase(BREAK_PHASE);
					changeMode(PLACEMENT_MODE);
					changeGameMode(EIGHTBALL);
					state_counter = 0;
					break_counter = 1;
					state_counter = 0;
				}

				// Trigger Gamemode State
				else if (menu_option == 1)
				{
					xil_printf("Select Gamemode!\r\n");
					changeState(GAMEMODE_STATE);
					changeBoxCoord(50, 376, 210, 73);
					state_counter = 0;
					menu_option = 0;
				}

				// Trigger Setting State
				else if (menu_option == 2)
				{
					xil_printf("Select Settings!\r\n");
					changeState(SETTING_STATE);
					changeBoxCoord(50, 376, 210, 73);
					state_counter = 0;
					setting_option = 0;
				}
			}

			// Scroll Down in the Game Menu
			else if (btn_value == BTN_DOWN_MASK)
			{

					clear_sprite(image_buffer, menu_screen, 600, 400, 45, 350);


					if (menu_option == 2) {
						menu_option = 0;
					}
					else menu_option++;

					if (menu_option == 0) {
						changeBoxCoord(50, 376, 288, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}

					else if (menu_option == 1) {
						changeBoxCoord(50, 476, 300, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}

					else if (menu_option == 2) {
						changeBoxCoord(50, 576, 250, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}
			}

			// Scroll Up in the Game Menu
			else if (btn_value == BTN_UP_MASK)
			{

					clear_sprite(image_buffer, menu_screen, 600, 400, 45, 350);

					if (menu_option == 0) {
						menu_option = 2;
					}
					else menu_option--;


					if (menu_option == 0) {
						changeBoxCoord(50, 376, 288, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}

					else if (menu_option == 1) {
						changeBoxCoord(50, 476, 300, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}

					else if (menu_option == 2) {
						changeBoxCoord(50, 576, 250, 73);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
						memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
					}
			 }
		}


		else if (currentState == SETTING_STATE)
		{
			// Select the present option
			if (btn_value == BTN_CENTER_MASK)
			{

				// Trigger Running State
				if (setting_option == 0)
				{
					if (volume_option == 0) {
						xil_printf("Volume off!\r\n");
						//Set the Comm Value for audio off
						volume_option = 1;
						memcpy(image_buffer, settings, NUM_BYTES_BUFFER);

					}
					else {
						xil_printf("Volume on!\r\n");
						//Set the Comm Value for audio on
						volume_option = 0;
					}
				}

				// Trigger Gamemode State
				else if (setting_option == 1) {
					xil_printf("Back Selected!\r\n");
					changeState(MENU_STATE);
					changeBoxCoord(50, 376, 288, 73);
					state_counter = 0;
					menu_option = 0;
				}
			}

			// Scroll Down in the Settings
			else if (btn_value == BTN_DOWN_MASK)
			{

				clear_sprite(image_buffer, settings, 210, 400, 45, 350);

				if (setting_option == 1) {
					setting_option = 0;
				}
				else setting_option++;

				if (setting_option == 0) {
					changeBoxCoord(50, 376, 210, 73);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				}

				else if (setting_option == 1) {
					changeBoxCoord(50, 476, 160, 73);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				}

				//			else if (setting_option == 2) {
				//				changeBoxCoord(50, 576, 250, 73);
				//				memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				//			}
			}

			// Scroll Up in the Game Menu
			else if (btn_value == BTN_UP_MASK)
			{

				clear_sprite(image_buffer, settings, 600, 400, 45, 350);

				if (setting_option == 0) {
					setting_option = 1;
				}
				else setting_option--;


				if (setting_option == 0) {
					changeBoxCoord(50, 376, 210, 73);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				}

				else if (setting_option == 1) {
					changeBoxCoord(50, 476, 160, 73);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
					memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				}

				//			else if (setting_option == 2) {
				//				changeBoxCoord(50, 576, 250, 73);
				//				memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				//			}
			}
		}


		else if (currentState == GAMEMODE_STATE)
		{
					// Select the present option
					if (btn_value == BTN_CENTER_MASK)
					{

						// Trigger Running State
						if (menu_option == 0) {
							// Select 8-ball (default)
							xil_printf("8-Ball Selected!\r\n");
							changeState(RUNNING_STATE);
							changePhase(BREAK_PHASE);
							changeGameMode(EIGHTBALL);
							changeBoxCoord(50, 376, 288, 73);
							state_counter = 0;
							menu_option = 0;
						}

						// Trigger Gamemode State
						else if (menu_option == 1) {
							xil_printf("9-Ball Selected!\r\n");
							changeState(RUNNING_STATE);
							changePhase(BREAK_PHASE);
							changeGameMode(NINEBALL);
							changeBoxCoord(50, 376, 288, 73);
							state_counter = 0;
							menu_option = 0;
						}

						else if (menu_option == 2) {
							xil_printf("Back Selected!\r\n");
							changeState(RUNNING_STATE);
							changePhase(BREAK_PHASE);
							changeGameMode(QUICKFIRE);
							changeBoxCoord(50, 376, 288, 73);
							state_counter = 0;
							menu_option = 0;
						}

						// Trigger Gamemode State
						else if (menu_option == 3) {
							xil_printf("Back Selected!\r\n");
							changeState(MENU_STATE);
							changeBoxCoord(50, 376, 288, 73);
							state_counter = 0;
							menu_option = 0;
						}
					}

					// Scroll Down in the Settings
					else if (btn_value == BTN_DOWN_MASK)
					{

						clear_sprite(image_buffer, gamemode, 600, 400, 45, 350);

						if (menu_option == 3) {
							menu_option = 0;
						}
						else menu_option++;

						if (menu_option == 0) {
							changeBoxCoord(50, 376, 180, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 1) {
							changeBoxCoord(50, 476, 180, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 2) {
							changeBoxCoord(50, 576, 160, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 3) {
						changeBoxCoord(50, 676, 160, 73);
						memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
					}
					}

					// Scroll Up in the Game Menu
					else if (btn_value == BTN_UP_MASK)
					{

						clear_sprite(image_buffer, gamemode, 600, 400, 45, 350);

						if (menu_option == 0) {
							menu_option = 3;
						}
						else menu_option--;


						if (menu_option == 0) {
							changeBoxCoord(50, 376, 210, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 1) {
							changeBoxCoord(50, 476, 180, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 2) {
							changeBoxCoord(50, 576, 160, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}

						else if (menu_option == 3) {
							changeBoxCoord(50, 676, 160, 73);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
							memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
						}
					}
		  }

		else if(currentState == RUNNING_STATE)
		{

			bool any_ball_moving = false;

			for(int i=0;i<num_balls;i++)
			{
				if(balls[i].is_moving)
				{
					any_ball_moving = true;
					break;
				}
			}


			if(!any_ball_moving)
			{
				//if((currentState == GAME_START || currentState == CUEBALL_POCKETED )  && !ball_hit && !ball_finalpos)
				//if(current_game_state == CUEBALL_POCKETED && !ball_finalpos)
				if( ( currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE ) && currentMode == PLACEMENT_MODE)
				{
					if (btn_value & BTN_RIGHT_MASK)
					{
						//xil_printf("Right Button Pressed!");
						//if(!ball_finalpos && !ball_hit)
						//{
							cueball_RIGHT();
							update_ball_index(0);


					}
					else if (btn_value & BTN_LEFT_MASK)
					{
						//xil_printf("left button pressed\n");
						//if(!ball_finalpos && !ball_hit)
						//{
							cueball_LEFT();
							update_ball_index(0);


					}
					else if (btn_value & BTN_UP_MASK)
					{
						//xil_printf("up button pressed\n");
						//if(!ball_finalpos && !ball_hit)
						//{
							cueball_UP();
							update_ball_index(0);
						//}

					}

					else if (btn_value & BTN_DOWN_MASK)
					{
						//xil_printf("down button pressed\n");
						//if(!ball_finalpos && !ball_hit)
						//{
							cueball_DOWN();
							update_ball_index(0);
						//}


					}
					else if (btn_value & BTN_CENTER_MASK)
					{
						//move_cuestick();
						//update_cuestick();

						//currentState = NORMAL_GAMEPLAY;
						changeMode(SHOOTING_MODE);
						ball_finalpos = true;
						stick_finalpos = false;

					}
				}
				//else if (currentState == NORMAL_GAMEPLAY && ball_finalpos && !stick_finalpos)
				else if(( currentPhase == PLAYER_PHASE || currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE ) && currentMode == SHOOTING_MODE)
				{
					 if (btn_value & BTN_RIGHT_MASK)
					 {
						clockwise_move();
						update_cuestick();
					 }
					 else if (btn_value & BTN_LEFT_MASK)
					 {
						counterclockwise_move();
						update_cuestick();
					 }
					 else if (btn_value & BTN_UP_MASK)
					 {
						power_up();
						update_cuestick();
					 }
					 else if (btn_value & BTN_DOWN_MASK)
					 {
						power_down();
						update_cuestick();
					 }
					 else if (btn_value & BTN_CENTER_MASK)
					 {
						 stick_finalpos = true;
						 //ball_hit = true;
						 changeMode(CONFIRM_MODE);

					 }
				}
				//else if (currentState == NORMAL_GAMEPLAY && !ball_finalpos && !ball_hit)
				else if (( currentPhase == PLAYER_PHASE || currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE ) && currentMode == CONFIRM_MODE)
				{
					 if (btn_value & BTN_CENTER_MASK)
					 {
						stick_finalpos = false;
						ball_finalpos = true;
						ball_hit = false;

						first_ball_hit = false;
						changeMode(SHOOTING_MODE);

					 }
				}

				else if ( currentPhase == GAMEOVER_PHASE )
				{
					if (btn_value == BTN_CENTER_MASK || btn_value == BTN_LEFT_MASK || btn_value == BTN_RIGHT_MASK || btn_value == BTN_UP_MASK || btn_value == BTN_DOWN_MASK)
					{
						changeState(MENU_STATE);
						changeBoxCoord(50, 376, 288, 73);
						state_counter = 0;
					}
				}

			}
		}
    // Clear and re-enable interrupts
    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

void TMR_Intr_Handler(void *data)
{
	if (XTmrCtr_IsExpired(&TMRInst,0)){
		// Once timer has expired 3 times, stop, increment counter
		// reset timer and start running again
		if(tmr_count == 3){
			XTmrCtr_Stop(&TMRInst,0);
			tmr_count = 0;
			led_data++;
			XGpio_DiscreteWrite(&LEDInst, 1, led_data);
			XTmrCtr_Reset(&TMRInst,0);
			XTmrCtr_Start(&TMRInst,0);

		}
		else tmr_count++;
	}
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();


	return XST_SUCCESS;

}

int IntcInitFunction(u16 DeviceId, XTmrCtr *TmrInstancePtr, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	//xil_printf("DEBUG: Starting Interrupt Initialization...\n");

	// Interrupt controller initialisation
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS)
		{
			xil_printf("ERROR: Interrupt Controller Initialization Failed!\n");
			return XST_FAILURE;
		}

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS)
		{
			xil_printf("ERROR: Interrupt System Setup Failed!\n");
			return XST_FAILURE;
		}

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
					  	  	 (void *)GpioInstancePtr);
	if(status != XST_SUCCESS)
		{
			xil_printf("ERROR: GPIO Interrupt Connection Failed!\n");
			return XST_FAILURE;
		}

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO and timer interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	//XScuGic_Enable(&INTCInst, INTC_TMR_INTERRUPT_ID);

	//xil_printf("DEBUG: Interrupt Setup Complete\n");
	return XST_SUCCESS;
}

unsigned char gpio_init() {

	int status;

	//xil_printf("step 1\n");
	// Initialize Push Buttons
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//xil_printf("step 2\n");
	//Set all buttons direction to inputs
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);
	return XST_SUCCESS;
}


