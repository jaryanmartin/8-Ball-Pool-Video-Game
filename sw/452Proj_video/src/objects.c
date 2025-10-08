#include "math.h"
#include "states.h"
#include "objects.h"
#define PI 3.14159265

Ball balls[MAX_BALLS];
Box highlight_box;
Cuestick stick = {1135,615,376,540, 300,300, 315, (int *)0x028A4010 };

int num_balls = 16;
int num_9balls = 10;

volatile bool pocketed_any_ball = false;
volatile BallType last_pocketed_ball_type = UNASSIGNED;

//Displaying the traingle rack of 8 Ball Pool Game
void init_balls(double angle)
{
    balls[0] = (Ball){900, 585, 30, 30, (int *)0x020BB00C, 0, 0, 0, CUE_BALL, true, false, 0};

    double startX = 200;
    double startY = 625;
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

    // Create the rotated triangle rack
    for (int row = 0; row < 5; row++) {
        double rowY = startY - (row * rowSpacing / 2);
        double rowX = startX + (row * rowSpacing);

        for (int i = 0; i < row + 1; i++)
		{
            if (ballIndex >= MAX_BALLS) break;

            double ballX = rowX;
            double ballY = rowY + (i * ballDiameter) - (row * ballDiameter / 2);

            // Apply rotation
            double rotatedX = centroidX + (ballX - centroidX) * cos(theta) - (ballY - centroidY) * sin(theta);
            double rotatedY = centroidY + (ballX - centroidX) * sin(theta) + (ballY - centroidY) * cos(theta);

            // Assign ball properties
            if (ballNum == 1)
            {
            	balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290C800 , 0, 0, 0, STRIPES, true, false, 11}; // Number 11
            }
            else if (ballNum == 2)
			{
            	balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290A000 , 0, 0, 0, STRIPES, true, false, 9}; // Number 9
			}
			else if (ballNum == 3)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02906400 , 0, 0, 0, SOLIDS, true, false, 6}; // Number 6
			}
			else if (ballNum == 4)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02903C00 , 0, 0, 0, SOLIDS, true, false, 4}; // Number 4
			}
			else if (ballNum == 5)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290F000 , 0, 0, 0, STRIPES, true, false, 13}; // Number 13
			}
			else if (ballNum == 6)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02910400 , 0, 0, 0, STRIPES, true, false, 14}; // Number 14
			}
			else if (ballNum == 7)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02911800 , 0, 0, 0, STRIPES, true, false, 15}; // Number 15
			}
			else if (ballNum == 8)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02902800 , 0, 0, 0, SOLIDS, true, false, 3}; // Number 3
			}
			else if (ballNum == 9)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02908C00 , 0, 0, 0, EIGHT_BALL, true, false, 8}; // Number 8
			}
			else if (ballNum == 10)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02901400 , 0, 0, 0, SOLIDS, true, false, 2}; // Number 2
			}
			else if (ballNum == 11)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02907800 , 0, 0, 0, SOLIDS, true, false, 7}; // Number 7
			}
			else if (ballNum == 12)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290DC00 , 0, 0, 0, STRIPES, true, false, 12}; // Number 12
			}
			else if (ballNum == 13)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02905000 , 0, 0, 0, SOLIDS, true, false, 5}; // Number 5
			}
			else if (ballNum == 14)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x0290B400 , 0, 0, 0, STRIPES, true, false, 10}; // Number 10
			}
			else if (ballNum == 15)
			{
				balls[ballIndex] = (Ball){rotatedX, rotatedY, 30, 30, (int *)0x02900000 , 0, 0, 0, SOLIDS, true, false, 1}; // Number 1
			}

            ballIndex++;
            ballNum++;
        }
    }

    num_balls = ballIndex;
}


Pocket pockets[NUM_POCKETS] =
{
	{120,346,31},  //top-left
	{630,331,29}, //top-middle
	{1155,346,31}, //top-right
	{1150,876,31}, //bottom-right
	{635,886,29}, //bottom-middle
	{120,876,31} //bottom-left
};

Edge edges[] =
{
	{Xmin, Ymin, Xmax, Ymin, false},  // Top wall
	{Xmin, Ymax, Xmax, Ymax, false},  // Bottom wall
	{Xmin, Ymin, Xmin, Ymax, false},  // Left wall
	{Xmax, Ymin, Xmax, Ymax, false},  // Right wall

	//angled cushions

	//top-left
	{120, 377, 140 , 399 , true}, //bottom edge
	{147, 339, 167, 359, true},  // right edge

	//Top-middle
	{602, 339, 597, 359, true},  // left edge
	{629, 339, 665, 359, true},  // right edge

	// Top-right
	//{1122, 339, 1102, 359, true}, // left edge
	{1122, 329, 1102, 349, true},
	{1162, 372, 1142, 392, true},  // bottom edge

	// Bottom-right
	{1102, 858, 1122, 878, true},  // left edge
	{1162, 844, 1142, 819, true},  // top edge

	// Bottom-middle
	{600, 858, 605, 878, true},  // left edge
	{670, 858, 660, 878, true},  // right edge

	// Bottom-left
	{170, 858, 150, 878, true},  // right edge
	{120, 844, 140, 824, true}   // top edge

};

void init_box() {
	highlight_box.x = 50;
	highlight_box.y = 376;
	highlight_box.width = 288;
	highlight_box.height = 73;
}

void changeBoxCoord(int x, int y, int width, int height) {
	highlight_box.x = x;
	highlight_box.y = y;
	highlight_box.width = width;
	highlight_box.height = height;
}



