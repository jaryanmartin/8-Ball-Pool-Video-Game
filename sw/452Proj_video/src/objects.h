#ifndef GAMEOBJECTS_H
#define GAMEOBJECTS_H

#include "xil_types.h"

#define MAX_BALLS 16
#define NUM_POCKETS 6
#define NUM_EDGES 16

typedef enum
{
	CUE_BALL,
	NINE_BALL,
	SOLIDS,
	STRIPES,
	EIGHT_BALL,
	UNASSIGNED
}BallType;

typedef struct
{
	double x;
	double y;
	int  width,height;
	int *sprite;  //sprite
	double angle;
	double vx,vy; // Velocity x and y components
	BallType type;
	bool active, is_moving;
	int number;
}Ball;

typedef struct
{
	double tipx, tipy;
	double basex , basey;
	double width,height;
	double angle;
	int *sprite;  //sprite
}Cuestick;

typedef struct
{
	double x1,y1, x2,y2;
	bool is_angle;
}Edge;

typedef struct
{
	double x,y;
	double radius;
}Pocket;

typedef struct
{
	int x,y;
	int width, height;
}Box;

//Play Region Constraints
const int Xmin = 140;
const int Xmax = 1142;
const int Ymin = 359;
const int Ymax = 858;

extern Cuestick stick;
extern Ball balls[MAX_BALLS];
extern int num_balls;
extern int num_9balls;
extern Pocket pockets[NUM_POCKETS];
extern Edge edges[NUM_EDGES];
extern Box highlight_box;

// For Ball assignment to players and Foul detection
extern volatile bool first_ball_hit;
extern volatile BallType first_hit_ball_type;
extern volatile BallType last_pocketed_ball_type;
extern volatile bool pocketed_any_ball;

/* ---------------------------------------------------------------------------- *
 *                     Initializer functions for the structs                    *
 * ---------------------------------------------------------------------------- */
void init_box();
void init_balls(double angle);

/* ---------------------------------------------------------------------------- *
 *                     Function to modify the box struct parameters             *
 * ---------------------------------------------------------------------------- */
void changeBoxCoord(int x, int y, int width, int height);

#endif
