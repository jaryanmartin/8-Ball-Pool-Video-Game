#ifndef COLLISIONS_H
#define COLLISIONS_H

#include "xil_types.h"
#include "nineball.h"
#include "objects.h"
#include "render.h"

#define PI 3.14159265
#define E 0.95

extern uint32_t *image_buffer;
extern int *pooltable_image;
extern bool ball_finalpos;
extern volatile bool foul_ball;
extern int previous_lowest_ball;

volatile extern int solids_count;
volatile extern int stripes_count;
extern volatile int player_count;

/* ---------------------------------------------------------------------------- *
 *                     Sprite collision functions for Detection                 *
 * ---------------------------------------------------------------------------- */
void check_wall_collisions(Ball *b);
bool check_ball_collisions(Ball *b1, Ball *b2);
bool check_ball_pocket(Ball *b);

/* ---------------------------------------------------------------------------- *
 *            Sprite collision functions for Handling the collisions            *
 * ---------------------------------------------------------------------------- */
void handle_ball_collisions(Ball *b1, Ball*b2);
void break_collisions(Ball *b1, Ball *b2); // Function that uses the LFSR random numbers to handle the break shot

/* ---------------------------------------------------------------------------- *
 *       Sprite functions for improved VGA rendering during collisions          *
 * ---------------------------------------------------------------------------- */
void avoid_overlap(Ball *b1, Ball *b2);

#endif
