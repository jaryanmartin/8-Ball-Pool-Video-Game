// Main file: C++ Application

#include <stdio.h>
#include <unistd.h>
#include "xil_types.h"
#include "xtmrctr.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xil_cache.h"
#include <cstdlib>
#include "xpseudo_asm.h"
#include "btn_interrupts.h"
#include "render.h"
#include "collisions.h"
#include "math.h"
#include "communications.h"
#include "movements.h"
#include "playermode.h"
//#include "bonustimer.h"
//#include "quickfire.h"

#define PI 3.14159265
#define LFSR_BASE_ADDR  0x43C00000
unsigned int lfsr;

volatile bool TIMER_INTR_FLG;
XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of thecontroller */

const int buffer_height = 1024;
const int buffer_width = 1280;

// Pointers to memory addresses containing our images
uint32_t * image_buffer = (uint32_t *)0x00900000;
int * pooltable_image = (int *)0x018D2008;
int * loading_screen = (int *)0x1000000;
int * menu_screen = (int *)0x6000000;
int * settings = (int *)0x7000000;
int * gamemode = (int *)0x4000000;
int * player1 = (int *)0x5000000;
int * player2 = (int *)0x8000000;
int * nineball = (int *)0x9000000;
int * quick_fire = (int *)0x10000000;

void Timer_InterruptHandler(XTmrCtr *data, u8 TmrCtrNumber)
{
	XTmrCtr_Stop(data,TmrCtrNumber);
	XTmrCtr_Reset(data,TmrCtrNumber);
	//Update Stuff
	TIMER_INTR_FLG = true;
}

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr){
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	(Xil_ExceptionHandler) XScuGic_InterruptHandler,
	XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

/*Setup all interrupts of the system*/
int ScuGicInterrupt_Init(u16 DeviceId,XTmrCtr *TimerInstancePtr)
{
	int Status;
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
	GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = SetUpInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/*Connect a device driver handler that will be called when an interrupt for the device occurs, the device driver handler performs the specific interrupt processing for the device*/
	Status = XScuGic_Connect(&InterruptController,
	61,
	(Xil_ExceptionHandler)XTmrCtr_InterruptHandler,
	(void *)TimerInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int main()
{
	XTmrCtr TimerInstancePtr;
	int xStatus, status;

	// Initialize Push Buttons
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Set all buttons direction to inputs
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

	//-----------Setup Timer Interrupt---------------------------------------

	xStatus = XTmrCtr_Initialize(&TimerInstancePtr,XPAR_AXI_TIMER_0_DEVICE_ID);

	XTmrCtr_SetHandler(&TimerInstancePtr,
	(XTmrCtr_Handler)Timer_InterruptHandler,
	&TimerInstancePtr);

	//Reset Values
	XTmrCtr_SetResetValue(&TimerInstancePtr,
	0, //Change with generic value
	//0xFFF0BDC0);
	//0x23C34600);
	0xDC3CB9FF);
	//Interrupt Mode and Auto reload
	XTmrCtr_SetOptions(&TimerInstancePtr,
	XPAR_AXI_TIMER_0_DEVICE_ID,
	(XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION ));

	xStatus=ScuGicInterrupt_Init(XPAR_PS7_SCUGIC_0_DEVICE_ID,&TimerInstancePtr);

	COMM_VAL = 0;
	Xil_SetTlbAttributes(0xFFFF0000,0x14de2);
	Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR);
	dmb(); //waits until write has finished
	sev();

	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &TMRInst, &BTNInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	memcpy (image_buffer, loading_screen, NUM_BYTES_BUFFER);

	// Initialize the triangle rack
	init_balls(315);
	init_prev_ball_positions();

	// Initialization for player's mode
	current_player = PLAYER1_TURN;
	ball_assignment_done = false;
	bool pocketed_any_ball = false;
	BallType last_pocketed_ball_type = UNASSIGNED;
	first_ball_hit = false;
	first_hit_ball_type = UNASSIGNED;

	// Begin with initializing only the balls for the 9-ball mode, add more later if necessary
	for (int i = 0; i < num_9balls; i++)
	{
		if (balls[i].active) {
			render_sprite(image_buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
		}
	}

	rotated_stick(image_buffer, stick.sprite, stick.width, stick.height, stick.tipx, stick.tipy, 315);

	bool addNew=true;
	uint32_t myColour = 0x18B5F9;
	state_counter = 0;
	break_counter = 1;
	init_counter = 0;

	while(1)
	{
		XTmrCtr_Start(&TimerInstancePtr,0); // Start timer

		// State swapping, begin in the inital state
		if (currentState == INIT_STATE)
		{
			memcpy(image_buffer, loading_screen, NUM_BYTES_BUFFER);
			state_counter = 0;
		}

		else if (currentState == MENU_STATE)
		{
		   if ( state_counter == 0 )
		   {
				memcpy(image_buffer, menu_screen, NUM_BYTES_BUFFER);
				state_counter = 1;
		   }

		   highlight_glow_box(image_buffer, highlight_box.x, highlight_box.y, highlight_box.width, highlight_box.height, 0, myColour);
		   usleep(30000);
		   Xil_DCacheFlush();
		}

		else if (currentState == SETTING_STATE)
		{
			if ( state_counter == 0 )
			{
				memcpy(image_buffer, settings, NUM_BYTES_BUFFER);
				state_counter = 1;
			}

			if ( volume_option == 0 )
			{
				draw_checkmark(image_buffer, 286, 372, 70, 71, myColour);
				usleep(30000);
			}

				highlight_glow_box(image_buffer, highlight_box.x, highlight_box.y, highlight_box.width, highlight_box.height, 0, myColour);
				usleep(30000);
				Xil_DCacheFlush();
		}

		else if (currentState == GAMEMODE_STATE)
		{
			if ( state_counter == 0 )
			{
				memcpy(image_buffer, gamemode, NUM_BYTES_BUFFER);
				state_counter = 1;
			}

			highlight_glow_box(image_buffer, highlight_box.x, highlight_box.y, highlight_box.width, highlight_box.height, 0, myColour);
			usleep(30000);
			Xil_DCacheFlush();
		}

		else if (currentState == RUNNING_STATE )
		{
			if(currentPhase != GAMEOVER_PHASE)
			{
				// All the logic for the nineball game handled within the void function
				if (currentGameMode == NINEBALL)
				{
					XTmrCtr_Start(&TimerInstancePtr,0);
					nineball_mode_rules();
				}

				else
				{
					if (currentGameMode != NINEBALL)
					{
						// All the logic for the eightball and quick fire modes handled within this else statement
						if (state_counter == 0)
						{
							if(currentGameMode == EIGHTBALL)
							{
								memcpy(image_buffer, pooltable_image, NUM_BYTES_BUFFER);
								highlight_player(image_buffer, pooltable_image, PLAYER1_TURN, 0);
							}
							else if (currentGameMode == QUICKFIRE)
							{
								memcpy(image_buffer, quick_fire, NUM_BYTES_BUFFER);
								flag = 0;
							}
							state_counter = 1;
						}

						//Timer Feature in QuickFire Mode Only!
						if(currentGameMode == QUICKFIRE)
						{
	//						Timer_feature();
						}

						XTmrCtr_Start(&TimerInstancePtr,0);
						bool all_balls_stopped = true;

						if ( init_counter == 0 )
						{
							init_balls(315);
							init_prev_ball_positions();

							//initialization for player's mode
							current_player = PLAYER1_TURN;
							ball_assignment_done = false;
							bool pocketed_any_ball = false;
							BallType last_pocketed_ball_type = UNASSIGNED;
							bool first_ball_hit = false;
							BallType first_hit_ball_type = UNASSIGNED;

							xil_printf("Game Start! Player 1's Turn\r\n");

							for (int i = 0; i < num_balls; i++)
							{
								if (balls[i].active) {
									render_sprite(image_buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
								}
							}
							rotated_stick(image_buffer, stick.sprite, stick.width, stick.height, stick.tipx, stick.tipy, 315);
							bool addNew = true;
							init_counter = 1;
						}

						update_all_balls();


						if(ball_finalpos &&  XGpio_DiscreteRead(&BTNInst, BTN_INT)!=0 )
						{
							move_cuestick();
							update_cuestick();

							if(currentGameMode == EIGHTBALL)
							{
								highlight_player(image_buffer, pooltable_image, current_player, 0);
							}
							redraw_pocketed_balls(image_buffer); // fix

							Xil_DCacheFlush();
						}
						if(stick_finalpos && currentPhase != BREAK_PHASE)
						{
							ball_finalpos = false;
							hit_ball();

							update_cuestick();

							if(currentGameMode == EIGHTBALL)
							{
								clear_rotated_stick(image_buffer, pooltable_image, stick.width, stick.height, stick.tipx, stick.tipy, stick.angle);
							}
							else
							{
								clear_rotated_stick(image_buffer, quick_fire, stick.width, stick.height, stick.tipx, stick.tipy, stick.angle);
							}

							stick_finalpos = false;
							ball_hit = true;

							if(currentGameMode == EIGHTBALL)
							{
								highlight_player(image_buffer, pooltable_image, current_player, 0);
							}

							first_ball_hit = false;
							first_hit_ball_type = UNASSIGNED;
							pocketed_any_ball = false;
							last_pocketed_ball_type = UNASSIGNED;
						}
						else if ( stick_finalpos && currentPhase == BREAK_PHASE )
						{
							if ( break_counter == 1 )
							{
								hit_ball();
								update_cuestick();
								ball_hit = true;
								break_counter = 0;
							}

							ball_finalpos = false;

							for ( int i = 1; i < num_balls; i++ )
							{
								break_collisions(&balls[0], &balls[i]);
							}

							clear_rotated_stick(image_buffer, pooltable_image, stick.width, stick.height, stick.tipx, stick.tipy, stick.angle);
							redraw_pocketed_balls(image_buffer);
							update_all_balls();

							first_ball_hit = false;
							first_hit_ball_type = UNASSIGNED;
							pocketed_any_ball = false;
							last_pocketed_ball_type = UNASSIGNED;

						}

						for (int i = 0; i < num_balls; i++)
						{
							if (balls[i].active && (balls[i].vx != 0 || balls[i].vy != 0))
							{
								balls[i].is_moving = true;

								all_balls_stopped = false;

								// Clear previous position
								clear_sprite(image_buffer, pooltable_image, balls[i].width, balls[i].height, prev_ball_x[i], prev_ball_y[i]);

								// Update position based on velocity
								balls[i].x += balls[i].vx;
								balls[i].y += balls[i].vy;

								// Apply friction
								if (i == 0) //cue ball
								{
									balls[i].vx *= 0.992;
									balls[i].vy *= 0.992;
								} else {
									balls[i].vx *= 0.99;
									balls[i].vy *= 0.99;
								}

								if (check_ball_pocket(&balls[i]))
								{
									 if (i > 0)
									 {
										// Not the cue ball
										pocketed_any_ball = true;
										last_pocketed_ball_type = balls[i].type;

										if (balls[i].type == SOLIDS || balls[i].type == STRIPES)
										{
											xil_printf("Player %d pocketed a %s ball\r\n", (current_player == PLAYER1_TURN) ? 1 : 2, (balls[i].type == SOLIDS) ? "SOLID" : "STRIPE");
										}
									 }
									 else if (i == 0)
									 {
										 foul_ball = true;
									 }
								   continue;
								}

								// Check wall collisions
								check_wall_collisions(&balls[i]);
							}
						}

						// Now check for ball collisions between all active balls
						for (int i = 0; i < num_balls; i++)
						{
							for (int j = i + 1; j < num_balls; j++)
							{
								if (balls[i].active && balls[j].active)
								{
									handle_ball_collisions(&balls[i], &balls[j]);
								}
								}
							}
						}

						for (int i = 0; i < num_balls; i++)
						{
							if (balls[i].active)
							{
								// Check if the ball has fallen into a pocket
								if (check_ball_pocket(&balls[i]))
								{

									continue; // Skip to the next ball
								}


								if (balls[i].vx != 0 || balls[i].vy != 0)
								{
									double stop_threshold = (i == 0) ? 0.5 : 0.75;
									if (fabs(balls[i].vx) < stop_threshold && fabs(balls[i].vy) < stop_threshold) {
										balls[i].vx = 0;
										balls[i].vy = 0;
										balls[i].is_moving = false;


										if (i == 0)
										{
											ball_moving = false;
										}
									}
									reset_power();
								}
							}
						}

						for (int i = 0; i < num_balls; i++)
						{
							if (balls[i].active && balls[i].is_moving)
							{
	//							all_balls_stopped = false;
								break;
							}
						}

						if (all_balls_stopped)
						{
							if(foul_ball)
							{
								clear_sprite(image_buffer, pooltable_image, balls[0].width, balls[0].height, prev_ball_x[0], prev_ball_y[0]);
								balls[0].x = 610;
								balls[0].y = 585;
								balls[0].active = true;
								ball_finalpos = false;
								foul_ball = false;
								handle_foul(FOUL_CUE_POCKETED);
								ball_hit = false;
							}
							else if(ball_hit)
							{
								//ball_finalpos = true;
								ball_finalpos = false;
								stick_finalpos = false;
								ball_hit = false;

								if(currentGameMode == EIGHTBALL)
								{
									process_shot_result(pocketed_any_ball, last_pocketed_ball_type);
								}
								reset_turn_state();
							}
						}


						for (int i = 0; i < num_balls; i++)
						{
							if (balls[i].active)
							{
								render_sprite(image_buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
								prev_ball_x[i] = balls[i].x;
								prev_ball_y[i] = balls[i].y;
							}
						}

						if (currentGameMode == EIGHTBALL)
						{
							highlight_player(image_buffer, pooltable_image, current_player, 0);
						}
					}
				}
				else if ( currentPhase == GAMEOVER_PHASE )
				{
					break_counter = 1;
					if ( game_result == PLAYER1_WINS || game_result == PLAYER2_LOST)
					{
						memcpy(image_buffer, player1, NUM_BYTES_BUFFER);
					}
					else if ( game_result == PLAYER2_WINS || game_result == PLAYER1_LOST)
					{
						memcpy(image_buffer, player2, NUM_BYTES_BUFFER);
					}
					Xil_DCacheFlush();
				}
				// Ensure changes are flushed to memory
				Xil_DCacheFlush();
			}
		}
	return 0;
}




