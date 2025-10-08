#ifndef PLAYER_MODE_H
#define PLAYER_MODE_H

#include "objects.h"
#include "render.h"
#include "collisions.h"
#include "nineball.h"

typedef enum
{
    PLAYER1_TURN,
    PLAYER2_TURN
} PlayerTurn;

typedef enum
{
    NO_FOUL,
    FOUL_CUE_POCKETED,
	FOUL_WRONG_BALL,
	FOUL_EIGHT_BALL,
	FOUL_NINE_BALL
} FoulType;

typedef enum {
    NO_RESULT,
    PLAYER1_WINS,
    PLAYER2_WINS,
	PLAYER1_LOST,
	PLAYER2_LOST
} GameResult;

extern volatile PlayerTurn current_player;
extern volatile FoulType current_foul;
extern volatile BallType player1_ball_type;
extern volatile BallType player2_ball_type;
extern volatile GameResult game_result;

extern bool ball_assignment_done;
extern volatile int flag;

/* ---------------------------------------------------------------------------- *
 *    Game Logic Functions to check every shot handled in accordance to rules    *
 * ---------------------------------------------------------------------------- */
void process_shot_result(bool pocketed_any_ball, BallType pocketed_ball_type);
void handle_foul(FoulType foul);
void assign_ball_types(BallType pocketed_ball);
bool is_player_ball(BallType ball_type);

/* ---------------------------------------------------------------------------- *
 *            Game Logic Function to handle player turn swapping                *
 * ---------------------------------------------------------------------------- */
void switch_player_turn(uint32_t *buffer, int *background, int frame);
void reset_turn_state();

#endif
