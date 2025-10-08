#ifndef OBJECTMOVES_H
#define OBJECTMOVES_H
#include "objects.h"
#include "states.h"

extern bool ball_finalpos ;
extern bool stick_finalpos;
extern bool ball_hit;
extern int speed;
extern volatile bool ball_moving;
extern volatile float deceleration;
extern volatile float ball_velocity;
extern volatile int power;

/* ---------------------------------------------------------------------------- *
 *                     Cueball Placement Functions                              *
 * ---------------------------------------------------------------------------- */
void cueball_UP();
void cueball_DOWN();
void cueball_LEFT();
void cueball_RIGHT();

/* ---------------------------------------------------------------------------- *
 *                     Cuestick Rotation and Movement Functions                 *
 * ---------------------------------------------------------------------------- */
void clockwise_move();
void counterclockwise_move();
void rotate_cuestick(double angle);
void move_cuestick();


/* ---------------------------------------------------------------------------- *
 *                     Toggle Cue Shot Power Functions // Power Mechanisms      *
 * ---------------------------------------------------------------------------- */
void power_up();
void power_down();
void reset_power();

/* ---------------------------------------------------------------------------- *
 *                     Functions that set and check the balls motion            *
 * ---------------------------------------------------------------------------- */
void hit_ball();
bool all_balls_stopped();
bool nineball_balls_stopped();

/* ---------------------------------------------------------------------------- *
 *                     LFSR functions for random numbre generation              *
 * ---------------------------------------------------------------------------- */
u32 read_lfsr();
void break_lfsr();

#endif
