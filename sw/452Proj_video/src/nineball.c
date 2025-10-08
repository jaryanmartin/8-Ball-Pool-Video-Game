#include "nineball.h"

int get_lowest_number()
{
    int lowest = 10;

    for (int i = 1; i <= 9; i++) {
        if (balls[i].active && balls[i].number < lowest) {
            lowest = balls[i].number;
        }
    }

    return lowest;
}

void nineball_mode_rules()
{
	if (state_counter == 0)
	{
		memcpy(image_buffer, nineball, NUM_BYTES_BUFFER);
		highlight_player(image_buffer, nineball, PLAYER1_TURN, 0);
		state_counter = 1;
	}

	bool all_balls_stop = true;

	if ( init_counter == 0 )
	{
		nineball_init_balls(360);
		//init_balls();
		nineball_init_prev_ball_positions();

		//initialization for player's mode
		current_player = PLAYER1_TURN;
		ball_assignment_done = false;
		pocketed_any_ball = false;
		int last_pocketed_ball_number = 10;
		bool first_ball_hit = false;
		xil_printf("Game Start! Player 1's Turn\r\n");

		for (int i = 0; i < num_9balls; i++)
		{
			if (balls[i].active) {
				render_sprite(image_buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
			}
		}

		rotated_stick(image_buffer, stick.sprite, stick.width, stick.height, stick.tipx, stick.tipy, 315);
		bool addNew = true;
		init_counter = 1;
	}

	nineball_update_all_balls();

	if(ball_finalpos &&  XGpio_DiscreteRead(&BTNInst, BTN_INT)!=0 )
	{

		move_cuestick();
		update_cuestick();

		highlight_player(image_buffer, nineball, current_player, 0);
		redraw_pocketed_balls(image_buffer); // fix

		Xil_DCacheFlush();
	}
	if(stick_finalpos && currentPhase != BREAK_PHASE)
	{
		ball_finalpos = false;
		COMM_VAL = 1; // Triggers the cue stick striking cue ball sound effect
		dmb();
		sleep(1); // For audio and VGA synchronization
		hit_ball();

		update_cuestick();


		clear_rotated_stick(image_buffer, nineball, stick.width, stick.height, stick.tipx, stick.tipy, stick.angle);

		stick_finalpos = false;
		ball_hit = true;

		highlight_player(image_buffer, nineball, current_player, 0);

		first_ball_hit = false;
		first_hit_ball_type = UNASSIGNED;
		pocketed_any_ball = false;
		last_pocketed_ball_type = UNASSIGNED;
	}
	else if ( stick_finalpos && currentPhase == BREAK_PHASE )
	{
		if ( break_counter == 1 )
		{
			// Comm_val for dual-core communication
			COMM_VAL = 1;
			dmb();
			sleep(1); // For synchronizing audio sound effect with VGA
			hit_ball();
			update_cuestick();
			ball_hit = true;
			break_counter = 0;
		}

		ball_finalpos = false;

		// Find coordinates for all the balls after the break
		for ( int i = 1; i < num_9balls; i++ ) {
			break_collisions(&balls[0], &balls[i]); // Uses the LFSR for random number generation
		}

		clear_rotated_stick(image_buffer, nineball, stick.width, stick.height, stick.tipx, stick.tipy, stick.angle);
		redraw_pocketed_balls(image_buffer);
		nineball_update_all_balls();

		first_ball_hit = false;
		first_hit_ball_type = UNASSIGNED;
		pocketed_any_ball = false;
		last_pocketed_ball_type = UNASSIGNED;
	}

	for (int i = 0; i < num_9balls; i++)
	{
		if (balls[i].active && (balls[i].vx != 0 || balls[i].vy != 0))
		{
			balls[i].is_moving = true;
			all_balls_stop = all_balls_stopped();

			// Clear previous position
			clear_sprite(image_buffer, nineball, balls[i].width, balls[i].height, prev_ball_x[i], prev_ball_y[i]);

			// Update position based on velocity
			balls[i].x += balls[i].vx;
			balls[i].y += balls[i].vy;

			// Apply friction
			if (i == 0) {
				balls[i].vx *= 0.992;
				balls[i].vy *= 0.992;
			} else {
				balls[i].vx *= 0.99;
				balls[i].vy *= 0.99;
			}

			if (nineball_check_ball_pocket(&balls[i]))
			{
				 if (i > 0)
				 {
					 // Do not include the cue ball in this, as that as a FOUL
					pocketed_any_ball = true;
					last_pocketed_ball_type = balls[i].type;

					if (balls[i].type == SOLIDS || balls[i].type == STRIPES)
					{
						xil_printf("Player %d pocketed a %s ball\r\n", (current_player == PLAYER1_TURN) ? 1 : 2,
									(balls[i].type == SOLIDS) ? "SOLID" : "STRIPE");
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
	for (int i = 0; i < num_9balls; i++)
	{
		for (int j = i + 1; j < num_9balls; j++)
		{
			if (balls[i].active && balls[j].active) {
				handle_ball_collisions(&balls[i], &balls[j]);
			}
		}
	}


	for (int i = 0; i < num_9balls; i++) {
		if (balls[i].active) {
			// Check if the ball has fallen into a pocket
			if (nineball_check_ball_pocket(&balls[i])) {
				continue; // Skip to the next ball
			}


			if (balls[i].vx != 0 || balls[i].vy != 0) {
				double stop_threshold = (i == 0) ? 0.5 : 0.75;
				if (fabs(balls[i].vx) < stop_threshold && fabs(balls[i].vy) < stop_threshold) {
					balls[i].vx = 0;
					balls[i].vy = 0;
					balls[i].is_moving = false;


					if (i == 0) {
						ball_moving = false;
					}
				}
				reset_power();
			}
		}
	}

	for (int i = 0; i < num_9balls; i++)
	{
		if (balls[i].active && balls[i].is_moving)
		{
			all_balls_stop = false;
			break;
		}
	}

	if (all_balls_stop)
	{
		if(foul_ball)
		{
			clear_sprite(image_buffer, nineball, balls[0].width, balls[0].height, prev_ball_x[0], prev_ball_y[0]);
			balls[0].x = 610;
			balls[0].y = 585;
			balls[0].active = true;
			ball_finalpos = false;
			foul_ball = false;
			handle_foul(FOUL_CUE_POCKETED);
			process_shot_result(pocketed_any_ball, last_pocketed_ball_type);
			ball_hit = false;
		}
		else if(ball_hit)
		{
			ball_finalpos = false;
			stick_finalpos = false;
			ball_hit = false;

			process_shot_result(pocketed_any_ball, last_pocketed_ball_type);

			// Reset for next turn
			reset_turn_state();
		}
	}

	for (int i = 0; i < num_9balls; i++)
	{
		if (balls[i].active)
		{
			render_sprite(image_buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
			prev_ball_x[i] = balls[i].x;
			prev_ball_y[i] = balls[i].y;
		}
	}
}

void nineball_update_ball_index(int ball_index)
{
	 if (prev_ball_x[ball_index] != balls[ball_index].x || prev_ball_y[ball_index] != balls[ball_index].y)
	 {
	     clear_sprite(image_buffer, nineball, balls[ball_index].width, balls[ball_index].height, prev_ball_x[ball_index], prev_ball_y[ball_index]);
	     render_sprite(image_buffer, balls[ball_index].sprite, balls[ball_index].width, balls[ball_index].height, balls[ball_index].x, balls[ball_index].y);
	     prev_ball_x[ball_index] = balls[ball_index].x;
	     prev_ball_y[ball_index] = balls[ball_index].y;
	     Xil_DCacheFlush();
	 }
}


void nineball_update_all_balls()
{
	for(int i=0;i<num_9balls;i++)
	{
		nineball_update_ball_index(i);
	}
}

void nineball_init_prev_ball_positions() {
	for (int i = 0; i < num_9balls; i++) {
		prev_ball_x[i] = balls[i].x;
		prev_ball_y[i] = balls[i].y;
		prev_ball_angle[i] = balls[i].angle;
	}
}

bool nineball_check_ball_pocket(Ball *b)
{
	if(!b->active)
	{
		return false;
	}

	previous_lowest_ball = get_lowest_number();

    // Calculate ball center
    double ball_center_x = b->x + 15;
    double ball_center_y = b->y + 15;

    // Check each pocket
    for (int i = 0; i < NUM_POCKETS; i++)
    {
        double pocket_x = pockets[i].x;
        double pocket_y = pockets[i].y;
        double pocket_radius = pockets[i].radius + 15;

        // Calculate distance between ball center and pocket center
        double dx = ball_center_x - pocket_x;
        double dy = ball_center_y - pocket_y;
        double distance = sqrt(dx * dx + dy * dy);

        // If the ball is inside the pocket
        if (distance < pocket_radius) {

        	COMM_VAL = 3; // Play the ball sunk sound effect

        	double current_x = b->x;
        	double current_y = b->y;

        	b->x = -100;
        	b->y = -100;

            // Deactivate the ball (it's been pocketed)
        	b->active = false;
			b->vx = 0;
			b->vy = 0;
			b->is_moving = false;

            // Clear the ball from the screen
            clear_sprite(image_buffer, nineball, b->width, b->height, current_x, current_y);

            Xil_DCacheFlush();

			int x_pos = 0;
			int y_pos = 217;

			// The nineball pockets are located in a different space, and there are only 9 of them, so this function accounts for that change
			if (b->type != CUE_BALL)
			{
				if (player_count == 0) {
					x_pos = 440;
				}
				else if (player_count == 1) {
					x_pos = 488;
				}
				else if (player_count <= 5) {
					x_pos = 488 + 47 * (player_count-1);
				}
				else if (player_count == 6) {
					x_pos = 734;
				}
				else if (player_count == 7) {
					x_pos = 734 + 47;
				}
				else if (player_count == 8) {
					x_pos = 781 + 47;
				}
				else if (player_count == 9) {
					x_pos = 781 + 47;
				}

				b->x = x_pos;
				b->y = y_pos;
				player_count++;
			}

             else if (b->type == CUE_BALL)
             {
            	 b->active = false;
            	 b->vx = 0;
            	 b->vy = 0;
            	 b->is_moving = false;
            	 usleep(1000000);
            	 foul_ball = true;
            }

            return true;
        }
    }

    return false;
}

// Displays the nineball's diamond rack, instead of other modes triangle shape
void nineball_init_balls(double angle)  // Pass rotation angle in degrees
{
    balls[0] = (Ball){900, 585, 30, 30, (int *)0x020BB00C, 0, 0, 0, CUE_BALL, true, false, 0};

    double startX = 350;
    double startY = 575;
    double ballDiameter = 30;
    double rowSpacing = ballDiameter * 0.866;

    int ballIndex = 1;
    int ballNum = 1;

    double sumX = 0, sumY = 0;
    int totalBalls = 0;

    // Compute centroid
    for (int row = 0; row < 5; row++) {
        double rowY = startY - (row * rowSpacing / 2);
        double rowX = startX + (row * rowSpacing);
        for (int i = 0; i < row + 1; i++) {
            double ballX = rowX;
            double ballY = rowY + (i * ballDiameter) - (row * ballDiameter / 2);
            sumX += ballX;
            sumY += ballY;
            totalBalls++;
        }
    }

    double centroidX = sumX / totalBalls;
    double centroidY = sumY / totalBalls;

    // Convert angle to radians
    double theta = angle * PI / 180.0;

    // Create the rotated diamond rack
	int diamond_rows[5] = {1, 2, 3, 2, 1};
	int totalRows = 5;

	for (int row = 0; row < totalRows; row++)
	{

		double rowY = startY - ((diamond_rows[row] - 1) * rowSpacing / 2);
		double rowX = startX + (row * rowSpacing);

		for (int i = 0; i < diamond_rows[row]; i++)
		{

			if ( ballIndex >= (num_balls-1) ) break;

			double ballX = rowX;
			double ballY = rowY + (i * ballDiameter);

			// Rotation
			double rotatedX = centroidX + (ballX - centroidX) * cos(theta) - (ballY - centroidY) * sin(theta);
			double rotatedY = centroidY + (ballX - centroidX) * sin(theta) + (ballY - centroidY) * cos(theta);

			// Assign ball properties
			if (ballNum == 1)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290A000 , 0, 0, 0, NINE_BALL, true, false, 9}; // Number 9
			}
			else if (ballNum == 2)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02906400 , 0, 0, 0, SOLIDS, true, false, 6}; // Number 6
			}
			else if (ballNum == 3)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02903C00 , 0, 0, 0, SOLIDS, true, false, 4}; // Number 4
			}
			else if (ballNum == 4)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02902800 , 0, 0, 0, SOLIDS, true, false, 3}; // Number 3
			}
			else if (ballNum == 5)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02908C00 , 0, 0, 0, EIGHT_BALL, true, false, 8}; // Number 8
			}
			else if (ballNum == 6)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02901400 , 0, 0, 0, SOLIDS, true, false, 2}; // Number 2
			}
			else if (ballNum == 7)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02907800 , 0, 0, 0, SOLIDS, true, false, 7}; // Number 7
			}
			else if (ballNum == 8)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02905000 , 0, 0, 0, SOLIDS, true, false, 5}; // Number 5
			}
			else if (ballNum == 9)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02900000 , 0, 0, 0, SOLIDS, true, false, 1}; // Number 1
			}

			ballIndex++;
			ballNum++;
		}
	}
}
