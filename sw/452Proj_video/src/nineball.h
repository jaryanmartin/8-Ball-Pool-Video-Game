#ifndef RULES_H
#define RULES_H

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
#include "objects.h"

/* ---------------------------------------------------------------------------- *
 *              Function to get the lowest active ball number                   *
 * ---------------------------------------------------------------------------- */
int get_lowest_number();

/* ---------------------------------------------------------------------------- *
 *    Function to handle all the rules of the game, based on the current phase. *
 *    Essentially, the main's logic for Nineball mode                           *
 * ---------------------------------------------------------------------------- */
void nineball_mode_rules();

// All the functions below here are similar versions of other functions present in our other files
// the choice to make them their own functions is for enhanced clarity and debugging

/* ---------------------------------------------------------------------------- *
 *              Functions for updating the ball's structs in Nineball           *
 * ---------------------------------------------------------------------------- */
void nineball_update_ball_index(int ball_index);
void nineball_update_all_balls();
void nineball_init_prev_ball_positions();

/* ---------------------------------------------------------------------------- *
 *   Function for pocket collisions and updating the balls accordingly in VGA   *
 * ---------------------------------------------------------------------------- */
bool nineball_check_ball_pocket(Ball *b);

/* ---------------------------------------------------------------------------- *
 *          Function for initializing the balls in a diamond shape              *
 * ---------------------------------------------------------------------------- */
void nineball_init_balls(double angle);

#endif
