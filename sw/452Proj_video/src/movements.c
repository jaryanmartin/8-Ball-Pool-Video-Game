#include "movements.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "math.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "render.h"

#define STEP_SIZE 5;
#define ROTATION_STEP 5;
#define PI 3.14159265

//For cue ball placement during break shot
int BASELINE_XMIN =  902;

#define MAX_BALLS 15
#define BALL_RADIUS 15
#define BALL_SAFE_DIST 30
#define LFSR_BASE_ADDR  0x43C00000
unsigned int lfsr_value;

volatile bool ball_moving = false;
volatile bool power_changed = false;

//cuestick power constraints
const int MAX_POWER = 70;
const int MIN_POWER = 15;
#define STEP_UP_POWER 12;
#define STEP_DOWN_POWER 10;
volatile int power = 35;

void cueball_UP()
{
	if(currentState == RUNNING_STATE && (currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE))
	{
		balls[0].y -= STEP_SIZE;
		if(balls[0].y < Ymin)
		{
			balls[0].y = Ymin;
		}
	}
}

void cueball_DOWN()
{

	if(currentState == RUNNING_STATE && (currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE))
	{
		balls[0].y += STEP_SIZE;
		if (balls[0].y + balls[0].height > Ymax)
		{
			balls[0].y = Ymax - balls[0].height;
		}
	}
}

void cueball_LEFT()
{

	if (currentState == RUNNING_STATE && currentPhase == BREAK_PHASE)
	{
		balls[0].x -= STEP_SIZE;
		if (balls[0].x < BASELINE_XMIN)
		{
			balls[0].x = BASELINE_XMIN;
		}
	}

	if (currentState == RUNNING_STATE && currentPhase == FOUL_PHASE)
	{
		balls[0].x -= STEP_SIZE;
		if (balls[0].x < Xmin)
		{
			balls[0].x = Xmin;
		}
	}
}

void cueball_RIGHT()
{

	if(currentState == RUNNING_STATE && (currentPhase == FOUL_PHASE || currentPhase == BREAK_PHASE))
	{
		balls[0].x += STEP_SIZE;
		if (balls[0].x + balls[0].width > Xmax)
		{
			balls[0].x = Xmax - balls[0].width;
		}
	}
}

void rotate_cuestick(double angle)
{

	double radians = stick.angle * (PI / 180.0);

	//Compute vector from tip to base of stick
	double dx = stick.basex - stick.tipx;
	double dy = stick.basey - stick.tipy;

	//Rotating around the tip
	double new_basex = stick.tipx + (dx * cos(radians) - dy * sin(radians));
	double new_basey = stick.tipy + (dx * sin(radians) + dy * cos(radians));

	//Updating base position after rotation
	stick.basex = new_basex;
	stick.basey = new_basey;
}

// Rotating cuestick in Clockwise direction
void clockwise_move()
{
	stick.angle += ROTATION_STEP;
	if (stick.angle >= 360)
	{
	   stick.angle -= 360;
	}
	rotate_cuestick(stick.angle);
}

// Rotating cuestick in Anti-clockwise direction
void counterclockwise_move()
{
	stick.angle -= ROTATION_STEP;
	if (stick.angle < 0)
	{
	   stick.angle += 360;
	}
	rotate_cuestick(stick.angle);
}


void hit_ball()
{
	//angle calculation (180 + 45) as cuestick is at 45 angle initially
	balls[0].angle = stick.angle + 225;

	double radians = balls[0].angle * (PI / 180.0);

	//Changing the ball's velocity x and y components
	balls[0].vx = power * cos(radians);
	balls[0].vy = power * sin(radians);

	//xil_printf("HIT! Power = %d\r\n", power);

	ball_moving = true;
	balls[0].is_moving = true;

	//On hit, Cuestick touch ball
	stick.tipx -= 12.8;
	stick.tipy -= 12.8;
}


u32 read_lfsr() {
    return Xil_In32(LFSR_BASE_ADDR);
}

void break_lfsr()
{
	int placed = 0;
	double valid_x[MAX_BALLS];
	double valid_y[MAX_BALLS];

	while (placed < MAX_BALLS )
	{
		unsigned int raw_x = read_lfsr();
		unsigned int raw_y = read_lfsr();

		// Convert the raw value to a value within our valid range
		double new_x = Xmin + BALL_RADIUS + (raw_x % (Xmax - Xmin - 3*BALL_RADIUS));
		double new_y = Ymin + BALL_RADIUS + (raw_y % (Ymax - Ymin - 3*BALL_RADIUS));

		bool valid_placement = true;
		for ( int i = 0; i < placed; i++)
		{
			//check for collisions between already placed balls.
			double dx = new_x - valid_x[i];
			double dy = new_y - valid_y[i];
			double distance = sqrt(dx * dx + dy * dy);
			if (distance < BALL_SAFE_DIST)
			{
				valid_placement = false;
				break;
			}
		}

		if ( valid_placement )
		{
			valid_x[placed] = new_x;
			valid_y[placed] = new_y;

			balls[placed].vx = 0.0;
			balls[placed].vy = 0.0;
			balls[placed].x = new_x;
			balls[placed].y = new_y;
			balls[placed].active = true;
			balls[placed].is_moving = false;

			placed++;
		}
	}
}

// To check all balls stopped moving in 8-ball and Quick Fire
bool all_balls_stopped() {
    for (int i = 0; i < num_balls; i++) {
        if (balls[i].is_moving) {
            return false;
        }
    }
    return true;
}

// To check all balls stopped moving in 9-Ball, since there are less balls
bool nineball_balls_stopped() {
    for (int i = 0; i < num_9balls; i++) {
        if (balls[i].is_moving) {
            return false;
        }
    }
    return true;
}


// Function to place cuestick at distance from ball
void move_cuestick()
{
	if(!ball_hit)
	{
		stick.tipx = balls[0].x + 40;
		stick.tipy = balls[0].y + 40;
	}

	 Xil_DCacheFlush();

}


void power_up()
{
	if (power < MAX_POWER)
	{
	    power += STEP_UP_POWER;

	    stick.tipx += STEP_SIZE;
	    stick.tipy += STEP_SIZE;

	    //xil_printf("Power UP: %d\r\n", power);

	}
	power_changed = true;

}

void power_down()
{
	if (power > MIN_POWER)
	{
	    power -= STEP_DOWN_POWER;

	    stick.tipx -= STEP_SIZE;
	    stick.tipy -= STEP_SIZE;

	    //xil_printf("Power DOWN: %d\r\n", power);
	//}
	}
	power_changed = true;

}

void reset_power()
{
	power = 35;

	 stick.tipx = balls[0].x + 40;
	 stick.tipy = balls[0].y + 40;

	 //xil_printf("Power RESET: %d\n", power);
}
