#include "render.h"
#include "math.h"
#include "stdio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "collisions.h"
#include "movements.h"

#define PI 3.14159265

//int prev_whiteball_x = whiteball.x;
//int prev_whiteball_y = whiteball.y;
//double prev_ballangle = whiteball.angle;

int prev_ball_x[MAX_BALLS];
int prev_ball_y[MAX_BALLS];
double prev_ball_angle[MAX_BALLS];
//volatile PlayerTurn current_player = PLAYER1_TURN;

double prev_stick_basex = stick.basex;
double prev_stick_basey = stick.basey;
double prev_stick_tipx = stick.tipx;
double prev_stick_tipy = stick.tipy;
double prev_angle  = stick.angle;

uint32_t highlight_palette[] = {
	0x1662e6,
	0x1db6fe,
	0x5edffe,
	0x51caf4,
	0x20aafc,
	0x1795fa,
	0x168ffc,
	0x215fea,
	0x1038c3,
	0x197cf5
};

void init_prev_ball_positions() {
    for (int i = 0; i < num_balls; i++) {
        prev_ball_x[i] = balls[i].x;
        prev_ball_y[i] = balls[i].y;
        prev_ball_angle[i] = balls[i].angle;
    }
}

void render_sprite(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, double x, double y) {
	//printf("r %f %f\r\n",x,y);
	double radius = sprite_width / 2;

    for (int j = 0; j < sprite_height; j++) {
        for (int i = 0; i < sprite_width; i++) {

            int screen_x = x + i;
            int screen_y = y + j;


            double dx = i - radius;
            double dy = j - radius;
            if (dx * dx + dy * dy <= radius * radius) //new condition
            {
				if (screen_x < buffer_width && screen_y < buffer_height) {
					int pixel = sprite[j * sprite_width + i];

					if (pixel != 0x000000) {
						buffer[screen_y * buffer_width + screen_x] = pixel;
					}
				}
            }
        }
    }
}

void clear_sprite(uint32_t *buffer, int *background, int sprite_width, int sprite_height, double x, double y) {

	//printf("c %f %f\r\n",x,y);
	int radius = sprite_width / 2;

    for (int j = 0; j < sprite_height + 3 ; j++) {
        for (int i = 0; i < sprite_width + 3 ; i++) {
            int screen_x = x + i;
            int screen_y = y + j;

            double dx = i - radius;
            double dy = j - radius;
            //if (dx * dx + dy * dy <= (radius * radius))  //new condition
            //{
				if (screen_x < buffer_width && screen_y < buffer_height) {
					int pixel =  background[screen_y * buffer_width + screen_x];
					buffer[screen_y * buffer_width + screen_x] = pixel;
				}
            //}
        }
    }
}



void clear_aiming_line(uint32_t *buffer, int *background, double start_x, double start_y, double angle) {
    double radians = angle * (PI / 180.0);

    start_x += 15;
    start_y += 15;

    double dir_x = cos(radians);
    double dir_y = sin(radians);

    int line_length = 600;

    int dash_length = 10;
    int gap_length = 5;

    double x = start_x;
    double y = start_y;

    x += dir_x * 20;
    y += dir_y * 20;

    bool drawing = true;
    int segment = 0;

    for (int i = 0; i < line_length; i++) {
        if (x < 140 || x > 1142 || y < 359 || y > 858) {

            break;
        }

        bool hit_ball = false;
        for (int j = 1; j < num_balls; j++) {
            if (balls[j].active) {
                double dx = x - (balls[j].x + 15);
                double dy = y - (balls[j].y + 15);
                double distance = sqrt(dx * dx + dy * dy);

                if (distance < 30)
                {
                    hit_ball = true;
                    break;
                }
            }
        }

        if (hit_ball)
        {
            break;
        }

        segment++;
        if (drawing && segment <= dash_length) {
            if (x >= 0 && x < buffer_width && y >= 0 && y < buffer_height) {
                buffer[(int)y * buffer_width + (int)x] = background[(int)y * buffer_width + (int)x];
            }
        } else if (segment > dash_length + gap_length) {
            segment = 0;
        }

        x += dir_x;
        y += dir_y;
    }
}



void draw_aiming_line(uint32_t *buffer, int *background, double start_x, double start_y, double angle, uint32_t color)
{
	double radians = angle * (PI / 180.0);

	start_x += 15;
	start_y += 15;

	double dir_x = cos(radians);
	double dir_y = sin(radians);

	int line_length = 600;
	int dash_length = 10;
	int gap_length = 5;
	double x = start_x;
	double y = start_y;

	x += dir_x * 20;
	y += dir_y * 20;

	bool drawing = true;
	int segment = 0;

	for (int i = 0; i < line_length; i++) {

		if (x < 140 || x > 1142 || y < 359 || y > 858)
		{
			break;
		}
		bool hit_ball = false;
		for (int j = 1; j < num_balls; j++)
		{
			if (balls[j].active) {
				double dx = x - (balls[j].x + 15);
				double dy = y - (balls[j].y + 15);
				double distance = sqrt(dx*dx + dy*dy);

				if (distance < 30)
				{
					hit_ball = true;
					break;
				}
			}
		}

		if (hit_ball)
		{
			break;
		}

		segment++;
		if (drawing && segment <= dash_length)
		{
			if (x >= 0 && x < buffer_width && y >= 0 && y < buffer_height) {
				buffer[(int)y * buffer_width + (int)x] = color;
			}
		} else if (segment > dash_length + gap_length) {
			segment = 0;
		}
		x += dir_x;
		y += dir_y;
	}
}

void rotated_stick(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, double tipx, double tipy, double angle)
{
	 double radians = angle * (PI / 180.0);
	 double cueball_center_x = balls[0].x + 15;
	 double cueball_center_y = balls[0].y + 15;


	    double tip_x = tipx - cueball_center_x;
	    double tip_y = tipy - cueball_center_y;

	    // Rotate the tip vector around the cueball
	    double new_tipx = cueball_center_x + (tip_x * cos(radians) - tip_y * sin(radians));
	    double new_tipy = cueball_center_y + (tip_x * sin(radians) + tip_y * cos(radians));

	    for (int y = 0; y < sprite_height; y++) {
	        for (int x = 0; x < sprite_width; x++) {
	            int color = sprite[y * sprite_width + x];

	            if (color == 0x000000) // Skip transparent pixels
	                continue;

	            int rel_x = x;
	            int rel_y = y;

	            double rotated_x = new_tipx + (rel_x * cos(radians) - rel_y * sin(radians));
	            double rotated_y = new_tipy + (rel_x * sin(radians) + rel_y * cos(radians));

	            // Ensure within screen bounds
	            if (rotated_x >= 0 && rotated_x < buffer_width && rotated_y >= 0 && rotated_y < buffer_height) {
	                buffer[(int)rotated_y * buffer_width + (int)rotated_x] = color;
	            }
	        }
	    }

}



void rotated_ball(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, int ballx, int bally, double angle)
{

	double radians = angle * (PI / 180.0);

	    for (int y = 0; y < sprite_height; y++) {
	        for (int x = 0; x < sprite_width; x++) {
	            int color = sprite[y * sprite_width + x];

	            if (color == 0x000000)
	                continue;

	            int rel_x = x - sprite_width / 2;
	            int rel_y = y - sprite_height / 2;

	            int rotated_x = ballx + (rel_x * cos(radians) - rel_y * sin(radians));
	            int rotated_y = bally + (rel_x * sin(radians) + rel_y * cos(radians));


	            if (rotated_x >= 0 && rotated_x < buffer_width && rotated_y >= 0 && rotated_y < buffer_height) {
	                buffer[rotated_y * buffer_width + rotated_x] = color;
	            }
	        }
	    }
}

void clear_rotated_ball(uint32_t *buffer, int *background, int sprite_width, int sprite_height, int ballx, int bally, double angle)
{
	double radians = angle * (PI / 180.0);

	for (int y = 0; y < sprite_height; y++) {
		for (int x = 0; x < sprite_width; x++) {

			int rel_x = x - sprite_width / 2;
			int rel_y = y - sprite_height / 2;

			int rotated_x = ballx + (rel_x * cos(radians) - rel_y * sin(radians));
			int rotated_y = bally + (rel_x * sin(radians) + rel_y * cos(radians));

			// Ensure within screen bounds
			if (rotated_x >= 0 && rotated_x < buffer_width && rotated_y >= 0 && rotated_y < buffer_height) {
				buffer[rotated_y * buffer_width + rotated_x] = background[rotated_y * buffer_width + rotated_x];
			}
		}
	}
}


void update_ball_index(int ball_index)
{
	 if (prev_ball_x[ball_index] != balls[ball_index].x || prev_ball_y[ball_index] != balls[ball_index].y)
	 {
	     clear_sprite(image_buffer, pooltable_image, balls[ball_index].width, balls[ball_index].height, prev_ball_x[ball_index], prev_ball_y[ball_index]);
	     render_sprite(image_buffer, balls[ball_index].sprite, balls[ball_index].width, balls[ball_index].height, balls[ball_index].x, balls[ball_index].y);
	     prev_ball_x[ball_index] = balls[ball_index].x;
	     prev_ball_y[ball_index] = balls[ball_index].y;
	     Xil_DCacheFlush();
	 }
}


void update_all_balls()
{
	for(int i=0;i<num_balls;i++)
	{
		update_ball_index(i);
	}
}

void update_rotatedball_index(int ball_index)
{

	if(prev_ball_x[ball_index] != balls[ball_index].x || prev_ball_y[ball_index] != balls[ball_index].y || prev_ball_angle[ball_index] != balls[ball_index].angle)
	{
	   clear_rotated_ball(image_buffer, pooltable_image, balls[ball_index].width, balls[ball_index].height, prev_ball_x[ball_index],
			   prev_ball_y[ball_index], prev_ball_angle[ball_index]);

	   rotated_ball(image_buffer, balls[ball_index].sprite, balls[ball_index].width, balls[ball_index].height, balls[ball_index].x, balls[ball_index].y,
	                   balls[ball_index].angle);

	   prev_ball_x[ball_index] = balls[ball_index].x;
	   prev_ball_y[ball_index] = balls[ball_index].y;
	   prev_ball_angle[ball_index] = balls[ball_index].angle;
	   Xil_DCacheFlush();
	}
}


void update_all_rotated_balls(int ball_index)
{
	for(int i=0;i<=num_balls;i++)
	{
		update_rotatedball_index(i);
	}

}

// Highlight box with a coloured line
void outline_box(uint32_t *buffer, int x, int y, int width, int height, uint32_t colour) {

	int i;

	// Draw the top and bottom sides of the box
	for (i = 0; i < width; i++) {
		buffer[(y * 1280) + (x + i)] = colour;
		buffer[((y + height - 1) * 1280) + (x + i)] = colour;
	}

	// Draw the left and right sides of the box
	for (i = 0; i < height; i++) {
		buffer[((y + i) * 1280) + x] = colour;
		buffer[((y + i) * 1280) + (x + width - 1)] = colour;
	}
}

// Set the intensity at random
int set_intensity()
{
	return Xil_In32(LFSR_BASE_ADDR) % 100;;
}

void draw_pixel(uint32_t *buffer, int x, int y, uint32_t colour)
{
    if (x >= 0 && x < 1280 && y >= 0 && y < 1024) {
        buffer[y * 1280 + x] = colour;
    }
}

// Give the selected box a glowing effect, tried to make it look like fire to match the setting screen
void glow_effect(uint32_t *buffer, int x, int y, int width, int height, int frame)
{
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {

            if (i < 3 || i >= width - 3 || j < 3 || j >= height - 3) {
                int intensity = set_intensity();
                if (intensity) {
                    int glow_colour = highlight_palette[Xil_In32(LFSR_BASE_ADDR) % 6];

                    draw_pixel(buffer, x + i + (Xil_In32(LFSR_BASE_ADDR) % 2 ), y + j + (Xil_In32(LFSR_BASE_ADDR) % 2 ), glow_colour);
                }
            }
        }
    }
}

// Highlight box with animated glowing effects
void highlight_glow_box(uint32_t *buffer, int x, int y, int width, int height, int frame, uint32_t colour) {
    outline_box(buffer, x, y, width, height, colour);
    glow_effect(buffer, x, y, width, height, frame);
}

// Draw a check at a location
void draw_checkmark(uint32_t *buffer, int x, int y, int width, int height, uint32_t colour) {
	int left = x + width / 4;
	int mid_y = y + height / 2;

	// Down-right stroke
	for (int i = 0; i < width / 6; i++) {
		int px = left + i;
		int py = mid_y + i;
		for (int j =0; j<10 / 2; j++) {
			draw_pixel(buffer, px + j, py , colour);
		}
	}

	// Up-right stroke
	for (int i = 0; i < width / 3; i++) {
		int px = left + (width / 6) + i;
		int py = mid_y + (width / 6) - i;
		for (int j =0; j<10 / 2; j++) {
			draw_pixel(buffer, px + j, py , colour);
		}
	}
}

void highlight_player(uint32_t *buffer, int *background, int currentPlayer, int frame)
{
	if(!flag)
	return;

	// Make these a little bit bigger so the rendering is fully cleared ( EIGHTBALL )
	int player1_x = 59;
	int player1_y = 47;
	int player2_x = 859;
	int player2_y = 47;
	int box_width = 372;
	int box_height = 78;

	if (currentGameMode == QUICKFIRE)
		return;

	else if (currentGameMode == NINEBALL)
	{
		// Make these a little bit bigger so the rendering is fully cleared
		player1_x = 77;
		player1_y = 83;
		player2_x = 838;
		player2_y = 83;
		box_width = 372;
		box_height = 78;
	}

    uint32_t highlight_color = 0x18B5F9;
    //uint32_t normal_color = 0x000000;

    clear_sprite(buffer, background, box_width, box_height, player1_x, player1_y);
    clear_sprite(buffer, background, box_width, box_height, player2_x, player2_y);

    if (currentGameMode == EIGHTBALL)
    {
		if (currentPlayer == PLAYER1_TURN)
		{
			highlight_glow_box(buffer, 69, 57, 352, 58, frame, highlight_color);
			//clear_sprite(image_buffer, background, box_width, box_height, player1_x, player2_x);
		}

		else
		{
			highlight_glow_box(buffer, 869, 57, 352,58, frame, highlight_color);
		}
    }

    else if ( currentGameMode == NINEBALL )
    {
    	if (currentPlayer == PLAYER1_TURN)
		{
			highlight_glow_box(buffer, 87, 93, 352, 58, frame, highlight_color);
		}

		else
		{
			highlight_glow_box(buffer, 848, 93, 352,58, frame, highlight_color);
		}
    }

	flag = 0;
}



void clear_rotated_stick(uint32_t *buffer,  int *background, int sprite_width, int sprite_height, double tipx, double tipy, double angle)
{
	double radians = angle * (PI / 180.0);

	    double cueball_center_x = balls[0].x + 15;
	    double cueball_center_y = balls[0].y + 15;

	    double tip_x = tipx - cueball_center_x;
	    double tip_y = tipy - cueball_center_y;

	    double new_tipx = cueball_center_x + (tip_x * cos(radians) - tip_y * sin(radians));
	    double new_tipy = cueball_center_y + (tip_x * sin(radians) + tip_y * cos(radians));

	    for (int y = 0; y < sprite_height; y++)
	    {
	        for (int x = 0; x < sprite_width; x++) {
	            int rel_x = x;
	            int rel_y = y;

	            double rotated_x = new_tipx + (rel_x * cos(radians) - rel_y * sin(radians));
	            double rotated_y = new_tipy + (rel_x * sin(radians) + rel_y * cos(radians));

	            int px = (int)(rotated_x + 0.5);
	            int py = (int)(rotated_y + 0.5);


	            if (px >= 0 && px < buffer_width && py >= 0 && py < buffer_height) {
	                buffer[(int)rotated_y * buffer_width + (int)rotated_x] = background[(int)rotated_y * buffer_width + (int)rotated_x];
	            }
	        }
	    }


}

void redraw_pocketed_balls(uint32_t *buffer)
{
	if (currentGameMode == EIGHTBALL)
	{
		for (int i = 0; i < num_balls; i++) {
			if (!balls[i].active && ((balls[i].type == SOLIDS && solids_count > 0) || (balls[i].type == STRIPES && stripes_count > 0)))
			{
				if (balls[i].x > 0 && balls[i].y > 0)
				{
					render_sprite(buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
				}
			}
		}
	}
	else if (currentGameMode == NINEBALL)
	{
		for (int i = 0; i < num_9balls; i++) {
			if (!balls[i].active)
			{
				if (balls[i].x > 0 && balls[i].y > 0)
				{
					render_sprite(buffer, balls[i].sprite, balls[i].width, balls[i].height, balls[i].x, balls[i].y);
				}
			}
		}
	}
}

void update_cuestick()
{

	if (prev_stick_basex != stick.basex || prev_stick_basey != stick.basey || prev_stick_tipx != stick.tipx || prev_stick_tipy != stick.tipy || prev_angle!=stick.angle)
	{

		if (currentGameMode == EIGHTBALL)
			clear_rotated_stick(image_buffer, pooltable_image, stick.width, stick.height, prev_stick_tipx, prev_stick_tipy, prev_angle);
		else if ( currentGameMode == NINEBALL )
			clear_rotated_stick(image_buffer, nineball, stick.width, stick.height, prev_stick_tipx, prev_stick_tipy, prev_angle);

		double prev_aim_angle = prev_angle + 225;
		if (prev_aim_angle >= 360)
		{
			prev_aim_angle -= 360;
		}

		if (currentGameMode == EIGHTBALL)
			clear_aiming_line(image_buffer, pooltable_image, balls[0].x, balls[0].y, prev_aim_angle);
		else if ( currentGameMode == NINEBALL )
			clear_aiming_line(image_buffer, nineball, balls[0].x, balls[0].y, prev_aim_angle);

		rotated_stick(image_buffer, stick.sprite, stick.width, stick.height, stick.tipx , stick.tipy, stick.angle);

		double aim_angle = stick.angle + 225;
		if (aim_angle >= 360)
		{
			aim_angle -= 360;
		}

		if (currentGameMode == EIGHTBALL)
			draw_aiming_line(image_buffer, pooltable_image, balls[0].x, balls[0].y, aim_angle, 0xFFFFFF);
		else if ( currentGameMode == NINEBALL )
			draw_aiming_line(image_buffer, nineball, balls[0].x, balls[0].y, aim_angle, 0xFFFFFF);

		flag = 1;

		if (currentGameMode == EIGHTBALL)
			highlight_player(image_buffer, pooltable_image, current_player, 0);
		else if ( currentGameMode == NINEBALL )
			highlight_player(image_buffer, nineball, current_player, 0);


		redraw_pocketed_balls(image_buffer);

		prev_stick_basex = stick.basex;
		prev_stick_basey = stick.basey;
		prev_stick_tipx = stick.tipx;
		prev_stick_tipy = stick.tipy;
		prev_angle = stick.angle;


		Xil_DCacheFlush();

	}
}

