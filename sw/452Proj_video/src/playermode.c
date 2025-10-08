#include "playermode.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "xil_printf.h"
#include "states.h"

volatile PlayerTurn current_player = PLAYER1_TURN;
volatile FoulType current_foul = NO_FOUL;
volatile BallType player1_ball_type = UNASSIGNED;
volatile BallType player2_ball_type = UNASSIGNED;
volatile GameResult game_result = NO_RESULT;

volatile int flag = 1;

// Global variable to check status of suit assignment for players
bool ball_assignment_done = false;

void switch_player_turn(uint32_t *buffer, int *background,  int frame)
{
    current_player = (current_player == PLAYER1_TURN) ? PLAYER2_TURN : PLAYER1_TURN;
    xil_printf("Switching to Player %d's turn\r\n", (current_player == PLAYER1_TURN) ? 1 : 2);

    // Highlight the new active player
    if (currentGameMode == EIGHTBALL)
    	highlight_player(image_buffer, pooltable_image, current_player, frame);
    else if (currentGameMode == NINEBALL)
    	highlight_player(image_buffer, nineball, current_player, frame);
    flag = 1;
}

void handle_foul(FoulType foul)
{
	current_foul = foul;

	switch (foul)
	{
	   case FOUL_CUE_POCKETED:
	        xil_printf("FOUL: Cue ball pocketed!\r\n");
	        changePhase(FOUL_PHASE);
	        break;
	   case FOUL_WRONG_BALL:
	        xil_printf("FOUL: Wrong ball pocketed!\r\n");
	        changePhase(FOUL_PHASE);
	        break;
	   case FOUL_EIGHT_BALL:
	        xil_printf("FOUL: Scratched on the 8-ball! Game over!\r\n");
	        changePhase(GAMEOVER_PHASE);
	        return;
	   case FOUL_NINE_BALL:
		   xil_printf("FOUL: Scratched on the 9-ball! Game over!\r\n");
		   changePhase(GAMEOVER_PHASE);
	   default:
	        return;
	}

	xil_printf("Player %d gets ball in hand\r\n", (current_player == PLAYER1_TURN) ? 2 : 1);
	currentMode = PLACEMENT_MODE;
	if ( currentGameMode == EIGHTBALL )
		switch_player_turn(image_buffer, pooltable_image,0);
	else if ( currentGameMode == NINEBALL )
		switch_player_turn(image_buffer, nineball,0);
}


void assign_ball_types(BallType pocketed_ball_type)
{
    if (ball_assignment_done) return;

    if (pocketed_ball_type == SOLIDS)
    {
        player1_ball_type = (current_player == PLAYER1_TURN) ? SOLIDS : STRIPES;
        player2_ball_type = (current_player == PLAYER1_TURN) ? STRIPES : SOLIDS;
        ball_assignment_done = true;
    }
    else if (pocketed_ball_type == STRIPES)
    {
        player1_ball_type = (current_player == PLAYER1_TURN) ? STRIPES : SOLIDS;
        player2_ball_type = (current_player == PLAYER1_TURN) ? SOLIDS : STRIPES;
        ball_assignment_done = true;
    }

    if(ball_assignment_done)
    {
    	xil_printf("Ball types assigned! Player 1: %s, Player 2: %s\r\n",
        (player1_ball_type == SOLIDS) ? "SOLIDS" : "STRIPES",
        (player2_ball_type == STRIPES) ? "SOLIDS" : "STRIPES");
    }
}


bool is_player_ball(BallType ball_type)
{
    if (!ball_assignment_done) return true;

    if (current_player == PLAYER1_TURN)
    {
        return ball_type == player1_ball_type;
    }

    else
    {
        return ball_type == player2_ball_type;
    }
}


void process_shot_result(bool pocketed_any_ball, BallType pocketed_ball_type)
{
	static bool first_shot = true;

	// In Nineball the shots depend on the number of the ball, not the suit
	if ( currentGameMode == NINEBALL )
	{
		int current_lowest_ball = get_lowest_number();
		xil_printf("Current lowest active ball: %d\r\n", current_lowest_ball);

		// If no ball was pocketed, turn is a miss and switch turns
		if (!pocketed_any_ball)
		{
			xil_printf("Player missed shot. Switching turns.\r\n");
			switch_player_turn(image_buffer, nineball,0);
		}

		// If the ball pocketed was the nine ball, check the shot did not foul and assign win/lose condition
		if (pocketed_ball_type == NINE_BALL)
		{
			xil_printf("pocketed_ball_type = %d\r\n", pocketed_ball_type);

		   // Check if player has pocketed all their assigned balls first
		   if (current_lowest_ball < num_9balls-1) // Num_9balls = 10, we want to see if the lowest number is less than the nine ball (number 9)
		   {
			   xil_printf("GAME OVER! Player %d pocketed the 9-ball too early! Player %d wins!\r\n",
					   (current_player == PLAYER1_TURN) ? 1 : 2,
					   (current_player == PLAYER1_TURN) ? 2 : 1);
			   game_result = (current_player == PLAYER1_TURN) ? PLAYER1_LOST : PLAYER2_LOST;
			   handle_foul(FOUL_NINE_BALL);
		   }
		   else
		   {
			   xil_printf("GAME OVER! Player %d pocketed the 9-ball and wins!\r\n",
					   (current_player == PLAYER1_TURN) ? 1 : 2);
			   game_result = (current_player == PLAYER1_TURN) ? PLAYER1_WINS : PLAYER2_WINS;
			   changePhase(GAMEOVER_PHASE);
		   }

		   return;
		}
	}

	// If there is another existing file, then exit here to prevent extra turn swapping/unnecessary logic
	if (foul_ball)
		return;

	// In EightBall the shots depend on the suit of the ball, not the number
	if (currentGameMode == EIGHTBALL)
	{
		if (first_shot)
	    {
	        if (pocketed_any_ball)
	        {
	            if (!ball_assignment_done && (pocketed_ball_type == SOLIDS || pocketed_ball_type == STRIPES))
	            {
	                assign_ball_types(pocketed_ball_type);

	                xil_printf("Break shot: Player 1 pocketed a %s ball\r\n",
	                          (pocketed_ball_type == SOLIDS) ? "SOLIDS" : "STRIPE");
	            }
	            else if (pocketed_ball_type == EIGHT_BALL)
	            {

	                xil_printf("GAME OVER! Player 1 pocketed the 8-ball on break. Player 2 wins!\r\n");
	                changePhase(GAMEOVER_PHASE);
	                return;
	            }
	        }
	        else
	        {
	            xil_printf("Player 1 missed on break shot. Switching turns.\r\n");
	            switch_player_turn(image_buffer, pooltable_image,0);
	        }
	        first_shot = false;
	        return;
	    }

	    if (!ball_assignment_done && pocketed_any_ball &&
	           (pocketed_ball_type == SOLIDS || pocketed_ball_type == STRIPES)) {
	           assign_ball_types(pocketed_ball_type);
	       }


	    if (pocketed_ball_type == EIGHT_BALL)
	       {
	           // Check if player has pocketed all their assigned balls first
	           bool player_balls_remaining = false;
	           BallType current_player_type = (current_player == PLAYER1_TURN) ? player1_ball_type : player2_ball_type;

	           for (int i = 1; i < num_balls; i++)
	           {
	               if (balls[i].active && balls[i].type == current_player_type)
	               {
	                   player_balls_remaining = true;
	                   break;
	               }
	           }

	           if (player_balls_remaining)
	           {
	               xil_printf("GAME OVER! Player %d pocketed the 8-ball too early! Player %d wins!\r\n",
	                       (current_player == PLAYER1_TURN) ? 1 : 2,
	                       (current_player == PLAYER1_TURN) ? 2 : 1);
	               game_result = (current_player == PLAYER1_TURN) ? PLAYER1_LOST : PLAYER2_LOST;
	               changePhase(GAMEOVER_PHASE);
	           }
	           else
	           {
	               xil_printf("GAME OVER! Player %d pocketed the 8-ball and wins!\r\n",
	                       (current_player == PLAYER1_TURN) ? 1 : 2);
	               game_result = (current_player == PLAYER1_TURN) ? PLAYER1_WINS : PLAYER2_WINS;
	               changePhase(GAMEOVER_PHASE);
	           }

	           return;
	       }


	        if (!pocketed_any_ball)
	        {
	            xil_printf("Player %d didn't pocket any ball. Switching turns.\r\n",
	                     (current_player == PLAYER1_TURN) ? 1 : 2);
	            switch_player_turn(image_buffer, pooltable_image,0);
	            return;
	        }

	        xil_printf("Player %d pocketed a %s ball and continues their turn\r\n",
	                (current_player == PLAYER1_TURN) ? 1 : 2,
	                (pocketed_ball_type == SOLIDS) ? "SOLID" : "STRIPED");
	}
}


void reset_turn_state()
{
	current_foul = NO_FOUL;
	first_ball_hit = false;
	foul_ball = false;
}
