#include "collisions.h"
#include <math.h>
#include <unistd.h>
#include "xil_cache.h"
#include "xil_printf.h"
//#include "quickfire.h"
#include "movements.h"
#include "states.h"

volatile bool foul_ball = false;
volatile int player1_count = 0;
volatile int player2_count = 0;
volatile int player_count = 0;

volatile int solids_count = 0;
volatile int stripes_count = 0;

volatile bool first_ball_hit = false;
volatile BallType first_hit_ball_type = UNASSIGNED;
volatile int first_hit_ball_number = 10;
int previous_lowest_ball = 10;

void check_wall_collisions(Ball *b)
{
	double ball_center_x = b->x + 15;
	double ball_center_y = b->y + 15;
	double radius = 15;

	if(!b->active)
	{
		return;
	}

	//4 Walls-collisions
	if (b->x <= Xmin)
	{
		// Prevent sticking
		b->x = Xmin + 2;
		b->vx = fabs(b->vx);
		b->angle = 180 - b->angle;
	}
	if (b->x + 30 >= Xmax)
	{
		b->x = Xmax - 30;
		b->vx = -fabs(b->vx);
		b->angle = 180 - b->angle;
	}

	if (b->y <= Ymin)
	{
		b->y = Ymin + 2;
		b->vy = fabs(b->vy); // Reflect Y velocity
		b->angle = -b->angle;
	}
	if (b->y + 30 >= Ymax)
	{
		b->y = Ymax - 30;  // Keep the ball within the play area
		b->vy = -fabs(b->vy);
		b->angle = -b->angle;
	}

	if(!b->active)
	{
		return;
	}

	//Slanted-Edges Collision
	for (int i = 4; i < NUM_EDGES; i++)
	{
		if (edges[i].is_angle)
		{
			double x1 = edges[i].x1;
			double y1 = edges[i].y1;
			double x2 = edges[i].x2;
			double y2 = edges[i].y2;

			//Calculate edge vector
			double edge_dx = x2 - x1;
			double edge_dy = y2 - y1;
			double edge_length = sqrt(edge_dx * edge_dx + edge_dy * edge_dy);

			//Unit vector along the edge
			double edge_unit_x = edge_dx / edge_length;
			double edge_unit_y = edge_dy / edge_length;

			//Normal vector
			double normal_x = -edge_unit_y;  // Rotate edge vector 90 degrees
			double normal_y = edge_unit_x;

			//Vector from edge start to ball center
			double ball_vec_x = ball_center_x - x1;
			double ball_vec_y = ball_center_y - y1;

			//Project ball vector onto the edge direction
			double dot_product = ball_vec_x * edge_unit_x + ball_vec_y * edge_unit_y;

			dot_product = fmax(0, fmin(dot_product, edge_length));

			//Closest point on edge to ball
			double closest_x = x1 + dot_product * edge_unit_x;
			double closest_y = y1 + dot_product * edge_unit_y;

			//Distance from ball to closest point
			double dist_x = ball_center_x - closest_x;
			double dist_y = ball_center_y - closest_y;
			double distance = sqrt(dist_x * dist_x + dist_y * dist_y);

			// Check for collision
			if (distance <= radius)
			{
					//Check if normal is facing away from ball
					double normal_dot = dist_x * normal_x + dist_y * normal_y;
					if (normal_dot < 0)
					{
						normal_x = -normal_x;
						normal_y = -normal_y;
					}

				//Correct position to prevent overlap
				double overlap = radius - distance ;
				b->x += normal_x * overlap;
				b->y += normal_y * overlap;

				// Reflect velocity
				double v_dot_n = b->vx * normal_x + b->vy * normal_y;
				b->vx -= 2 * v_dot_n * normal_x * E;
				b->vy -= 2 * v_dot_n * normal_y * E;

				if (fabs(b->vx) < 0.05) b->vx = (b->vx < 0) ? -0.05 : 0.05;
				if (fabs(b->vy) < 0.05) b->vy = (b->vy < 0) ? -0.05 : 0.05;

				// Update ball angle
				if (fabs(b->vx) > 0.001 || fabs(b->vy) > 0.001) {
					b->angle = atan2(b->vy, b->vx) * (180.0 / PI);
				}

				break;
			}
		}
	}
}

void avoid_overlap(Ball *b1, Ball *b2)
{
	 double center_x1 = b1->x + 15;
	 double center_y1 = b1->y + 15;
	 double center_x2 = b2->x + 15;
	 double center_y2 = b2->y + 15;

	 double dx = center_x2 - center_x1;
	 double dy = center_y2 - center_y1;
	 double distance = sqrt(dx * dx + dy * dy);

	 //Distance between two centers of ball
	 double centers_dist = 2 * ( (b1->width) / 2 );

	 if (distance < centers_dist)
	 {
		 double overlap = centers_dist - distance;

		 if (distance < 1.0) distance = 1.0;

		 double moveX = (overlap * dx) / distance;
		 double moveY = (overlap * dy) / distance;

		 b1->x -= moveX * 0.55;
		 b1->y -= moveY * 0.55;
		 b2->x += moveX * 0.55;
		 b2->y += moveY * 0.55;
	 }
}


bool check_ball_collisions(Ball *b1, Ball *b2)
{
	//For ball b1
	double center_x1 = b1->x + 15;
	double center_y1 = b1->y + 15;

	//For Ball b2
	double center_x2 = b2->x + 15;
	double center_y2 = b2->y + 15;

	//Distance between two centers of ball
	double centers_dist = 2 * ( (b1->width) / 2 );

	double dx = center_x2 - center_x1;
	double dy = center_y2 - center_y1;

	double distance = sqrt(dx * dx + dy * dy);
	return (distance < centers_dist);
}


void handle_ball_collisions(Ball *b1, Ball *b2)
{
	if (!check_ball_collisions(b1, b2))
	        return;

	// Calculate centers of balls
	double center_x1 = b1->x + 15;
	double center_y1 = b1->y + 15;
	double center_x2 = b2->x + 15;
	double center_y2 = b2->y + 15;

	// Calculate vector from ball1 to ball2
	double dx = center_x2 - center_x1;
	double dy = center_y2 - center_y1;
	double distance = sqrt(dx * dx + dy * dy);

	// Collision detected
	if (distance < 30)
	{
//		COMM_VAL = 2; // Play the ball collision sound effect

		// Correct positions to prevent overlap
		avoid_overlap(b1, b2);

		// The first ball to collide with the cue ball must be of the player's suit in the eight-ball mode, suits must be assigned.
		if (currentGameMode == EIGHTBALL)
		{
			if ( ball_assignment_done )
			{
				// Checks if one of the two balls in the collision is a cue ball, if it is then check the other ball's suit to see what was first hit
				if ( first_ball_hit == false && (b1->type == CUE_BALL || b2->type == CUE_BALL) )
				{
					first_ball_hit = true;
					if ( b1->type == CUE_BALL )
					{
						first_hit_ball_type = b2->type;
						xil_printf("Player %d first ball hit was a %s ball\r\n", (current_player == PLAYER1_TURN) ? 1 : 2, (first_hit_ball_type == SOLIDS) ? "SOLID" : "STRIPED");
					}
					else
					{
						first_hit_ball_type = b1->type;
						xil_printf("Player %d first ball hit was a %s ball\r\n", (current_player == PLAYER2_TURN) ? 1 : 2, (first_hit_ball_type == SOLIDS) ? "SOLID" : "STRIPED");
					}

					// Example: If the player's suit is solids, but the first ball hit was stripes. Foul!
					if ( current_player == PLAYER1_TURN )
					{
						if ( player1_ball_type != first_hit_ball_type )
							foul_ball = true;
					}
					else if ( current_player == PLAYER2_TURN )
					{
						if ( player2_ball_type != first_hit_ball_type )
							foul_ball = true;
					}
				}
			}
		}

		// Nineball mode depends on the lowest number ball being hit for a valid collision without a foul
		else if (currentGameMode == NINEBALL)
		{
			// Checks if one of the two balls in the collision is a cue ball, if it is then check the other ball's number to see what was first hit
			if ( first_ball_hit == false && (b1->type == CUE_BALL || b2->type == CUE_BALL) )
			{
				first_ball_hit = true;
				if ( b1->type == CUE_BALL )
				{
					first_hit_ball_number = b2->number;
				}
				else
				{
					first_hit_ball_number = b1->number;
				}
				// Example: If the previous lowest ball was ball number 5, but the first ball hit was ball number 7. Foul!
				if ( previous_lowest_ball != first_hit_ball_number )
					foul_ball = true;
			}
		}

		// Recalculate after avoiding overlap
		center_x1 = b1->x + 15;
		center_y1 = b1->y + 15;
		center_x2 = b2->x + 15;
		center_y2 = b2->y + 15;
		dx = center_x2 - center_x1;
		dy = center_y2 - center_y1;
		distance = sqrt(dx * dx + dy * dy);

		// Normalize the collision normal
		double nx = dx / distance;
		double ny = dy / distance;

		// Calculate velocity components along the normal
		double v1n = b1->vx * nx + b1->vy * ny;
		double v2n = b2->vx * nx + b2->vy * ny;

		// Calculate velocity components perpendicular to the normal
		double v1t = b1->vx * (-ny) + b1->vy * nx;
		double v2t = b2->vx * (-ny) + b2->vy * nx;

		// Don't process if balls are moving away from each other
		if (v1n - v2n <= 0)
			return;

		// Calculate new normal velocities
		double v1n_new = v2n;
		double v2n_new = v1n;

		// Apply coefficient of restitution
		v1n_new = v1n_new * E;
		v2n_new = v2n_new * E;

		// Convert back to vector form
		b1->vx = nx * v1n_new + (-ny) * v1t;
		b1->vy = ny * v1n_new + nx * v1t;
		b2->vx = nx * v2n_new + (-ny) * v2t;
		b2->vy = ny * v2n_new + nx * v2t;

		// Update angles
		if (fabs(b1->vx) > 0.001 || fabs(b1->vy) > 0.001) {
			b1->angle = atan2(b1->vy, b1->vx) * (180.0 / PI);
		}
		if (fabs(b2->vx) > 0.001 || fabs(b2->vy) > 0.001) {
			b2->angle = atan2(b2->vy, b2->vx) * (180.0 / PI);
		}

	}

}

// Function that uses the LFSR random numbers to handle the break shot
void break_collisions(Ball *b1, Ball *b2)
{
	// Calculate centers of balls
	double center_x1 = b1->x + 15;
	double center_y1 = b1->y + 15;
	double center_x2 = b2->x + 15;
	double center_y2 = b2->y + 15;

	// Calculate vector from ball1 to ball2
	double dx = center_x2 - center_x1;
	double dy = center_y2 - center_y1;
	double distance = sqrt(dx * dx + dy * dy);

	// Collision detected
	if (distance < 30)
	{
		// Correct positions to prevent overlap
		avoid_overlap(b1, b2);

		// Recalculate after avoiding overlap
		break_lfsr(); // Generates valid x and y coordinates for all the balls after the break
		changePhase(PLAYER_PHASE);
		stick_finalpos = false;
	}
}

bool check_ball_pocket(Ball *b)
{
	if(!b->active)
	{
		return false;
	}

    // Calculate ball center
    double ball_center_x = b->x + 15;
    double ball_center_y = b->y + 15;

    // Check each pocket
    for (int i = 0; i < NUM_POCKETS; i++)
    {
        double pocket_x = pockets[i].x;
        double pocket_y = pockets[i].y;
        double pocket_radius = pockets[i].radius + 15;

        //Calculate distance between ball center and pocket center
        double dx = ball_center_x - pocket_x;
        double dy = ball_center_y - pocket_y;
        double distance = sqrt(dx * dx + dy * dy);

        // If the ball is inside the pocket
        if (distance < pocket_radius)
		{

			double current_x = b->x;
			double current_y = b->y;

			b->x = -100;
			b->y = -100;

			//slowing the ball down
            b->vx *= 0.90;
            b->vy *= 0.90;

            // Clear the ball from the screen
            clear_sprite(image_buffer, pooltable_image, b->width, b->height, current_x, current_y);

            Xil_DCacheFlush();

            if(currentGameMode == QUICKFIRE)
            {
            	if(b->type == CUE_BALL)
            	{
            		 b->active = false;
					 b->vx = 0;
					 b->vy = 0;
					 b->is_moving = false;
					 usleep(1000000);
					 foul_ball = true;
            	}
            	else
            	{
					b->active = false;
					b->vx = 0;
					b->vy = 0;
					b->is_moving = false;
					if (solids_count == 0)
					{
						b->x = 156;
					}
					else if (solids_count == 1 )
					{
						b->x = 204;
					}
					else if (solids_count >= 2  && solids_count <= 13 )
					{
						b->x = 204+47*solids_count;
					}
					else if (solids_count == 14)
					{
						b->x = 388;
					}
					b->y = 225;
					solids_count++;

					//Adding bonus time for ball pocketed
//					bonus_time(5);
            	}
            }
			//EightBall GameMode
            else
            {
            	if (b->type == SOLIDS || b->type == STRIPES)
				{
					b->active = false;
					b->vx = 0;
					b->vy = 0;
					b->is_moving = false;

					//first-time assignment of balls
					if (!ball_assignment_done)
					{
						assign_ball_types(b->type);
					}

					bool player_suit = (b->type == player1_ball_type);

					int x_pos = 0;
					int y_pos = 188;

					if ( player_suit )
					{
						if (player1_count == 0)
						{
							x_pos = 104;
						}
						else if (player1_count == 1)
						{
							x_pos = 152;
						}
						else if (player1_count <= 5)
						{
							x_pos = 152 + 47 * (player1_count-1);
						}
						else if (player1_count == 6)
						{
							x_pos = 388;
						}
						b->x = x_pos;
						b->y = y_pos;
						player1_count++;

					}
					else
					{
						if (player2_count == 0)
						{
							x_pos = 874;
						}
						else if (player2_count == 1)
						{
							x_pos = 922;
						}
						else if (player2_count <= 5)
						{
							x_pos = 922 + 47 * (player2_count-1);
						}
						else if (player2_count == 6)
						{
							x_pos = 1158;
						}

						b->x = x_pos;
						b->y = y_pos;
						player2_count++;
					}
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

				else if(b->type == EIGHT_BALL)
				{
					b->active = false;
					b->vx = 0;
					b->vy = 0;
					b->is_moving = false;
				}
            }
            return true;
        }
    }

    return false;
}







