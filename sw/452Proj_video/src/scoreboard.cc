#include "scoreboard.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include <string.h>
#include <stdio.h>

// Screen and VGA definitions
#define SCREEN_WIDTH    1280
#define SCREEN_HEIGHT   1024
#define VGA_BASE_ADDR   0x00900000

//---------------------------------------------------------------------
// Basic Drawing Functions
//---------------------------------------------------------------------
void clearScreen(u32 color) {
    for (int y = 0; y < SCREEN_HEIGHT; y++) {
        for (int x = 0; x < SCREEN_WIDTH; x++) {
            u32* pixelAddr = (u32*)(VGA_BASE_ADDR + ((y * SCREEN_WIDTH) + x) * 4);
            *pixelAddr = color;
        }
    }
    Xil_DCacheFlush();
}

void drawHorizontalLine(int x, int y, int length, int thickness, u32 color) {
    for (int t = 0; t < thickness; t++) {
        for (int i = 0; i < length; i++) {
            u32* vga_ptr = (u32*)(VGA_BASE_ADDR + ((y + t) * SCREEN_WIDTH + (x + i)) * 4);
            *vga_ptr = color;
        }
    }
}

void drawVerticalLine(int x, int y, int length, int thickness, u32 color) {
    for (int t = 0; t < thickness; t++) {
        for (int i = 0; i < length; i++) {
            u32* vga_ptr = (u32*)(VGA_BASE_ADDR + (((y + i) * SCREEN_WIDTH) + (x + t)) * 4);
            *vga_ptr = color;
        }
    }
}

//---------------------------------------------------------------------
// drawScoresTitle
// This function prints the word "SCOREBOARD" as you already have.
//---------------------------------------------------------------------
static void drawScoresTitle(u32 color) {
    // Use your existing drawing code to print "SCOREBOARD".
    // (Here we simply call your provided implementation.)
    // S
    drawHorizontalLine(320, 66, 100, 10, color);
    drawVerticalLine(320, 66, 75, 10, color);
    drawHorizontalLine(320, 141, 100, 10, color);
    drawVerticalLine(420, 141, 75, 10, color);
    drawHorizontalLine(320, 206, 100, 10, color);
    // c
    drawHorizontalLine(440, 141, 50, 10, color);
    drawHorizontalLine(440, 206, 50, 10, color);
    drawVerticalLine(440, 141, 75, 10, color);
    // o
    drawHorizontalLine(510, 141, 50, 10, color);
    drawHorizontalLine(510, 206, 50, 10, color);
    drawVerticalLine(510, 141, 75, 10, color);
    drawVerticalLine(550, 141, 75, 10, color);
    // r
    drawHorizontalLine(570, 141, 50, 10, color);
    drawHorizontalLine(570, 171, 50, 10, color);
    drawVerticalLine(570, 141, 75, 10, color);
    drawVerticalLine(620, 141, 40, 10, color);
    drawVerticalLine(595, 171, 46, 10, color);
    // E
    drawHorizontalLine(640, 141, 50, 10, color);
    drawHorizontalLine(640, 171, 35, 10, color);
    drawHorizontalLine(640, 206, 50, 10, color);
    drawVerticalLine(640, 141, 75, 10, color);
    // s
    drawHorizontalLine(700, 141, 50, 10, color);
    drawVerticalLine(700, 141, 38, 10, color);
    drawHorizontalLine(700, 179, 50, 10, color);
    drawVerticalLine(750, 179, 38, 10, color);
    drawHorizontalLine(700, 206, 50, 10, color);
    // G is commented out.
}

//---------------------------------------------------------------------
// drawBox
// Draws an empty rectangular box at (boxX, boxY) with given width, height,
// border color, and line thickness.
//---------------------------------------------------------------------
void drawBox(int boxX, int boxY, int boxWidth, int boxHeight, u32 boxColor, int lineThickness) {
    // Draw top border
    drawHorizontalLine(boxX, boxY, boxWidth, lineThickness, boxColor);
    // Draw bottom border
    drawHorizontalLine(boxX, boxY + boxHeight - lineThickness, boxWidth, lineThickness, boxColor);
    // Draw left border
    drawVerticalLine(boxX, boxY, boxHeight, lineThickness, boxColor);
    // Draw right border
    drawVerticalLine(boxX + boxWidth - lineThickness, boxY, boxHeight, lineThickness, boxColor);
}

void draw0(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
    // 0
    drawHorizontalLine(x, y, width, lineThickness, boxColor);
    // Draw bottom border
    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
    // Draw left border
    drawVerticalLine(x, y, height, lineThickness, boxColor);
    // Draw right border
    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void draw1(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	//1
	    drawVerticalLine(x + 19, y, height, lineThickness, boxColor);
}

void draw2(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// 2
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawHorizontalLine(x, y + (15 - lineThickness), width, lineThickness, boxColor);
	    drawHorizontalLine(x, y + (29 - lineThickness), width, lineThickness, boxColor);
	    // Draw left border
	    drawVerticalLine(x, y + 14, height/2, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y, height/2, lineThickness, boxColor);
}

void draw3(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// 3
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawHorizontalLine(x, y + ((height/2) - lineThickness), width, lineThickness, boxColor);
	    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void draw4(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// 4
	    drawHorizontalLine(x, y +  ((height/2) - lineThickness), width, lineThickness, boxColor);
	    // Draw left border
	    drawVerticalLine(x, y, height/2, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void draw5(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// 5
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawHorizontalLine(x, y + ((height/2) - lineThickness), width, lineThickness, boxColor);
	    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
	    // Draw left border
	    drawVerticalLine(x, y, height/2, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y + height/2 - lineThickness, height/2, lineThickness, boxColor);
}

void draw6(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// 6
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawHorizontalLine(x, y + height/2 - lineThickness, width, lineThickness, boxColor);
	    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
	    // Draw left border
	    drawVerticalLine(x, y, height, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y + height/2 - lineThickness, height/2, lineThickness, boxColor);
}

void draw7(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// Draw top border
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void draw8(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// Draw top border
	    drawHorizontalLine(x, y, width, lineThickness, boxColor);
	    // Draw bottom border
	    drawHorizontalLine(x, y + height/2 - lineThickness, width, lineThickness, boxColor);
	    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
	    // Draw left border
	    drawVerticalLine(x, y, height, lineThickness, boxColor);
	    // Draw right border
	    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void draw9(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// Draw top border
		    drawHorizontalLine(x, y, width, lineThickness, boxColor);
		    // Draw bottom border
		    drawHorizontalLine(x, y + height/2 - lineThickness, width, lineThickness, boxColor);
		    // Draw left border
		    drawVerticalLine(x, y, height/2, lineThickness, boxColor);
		    // Draw right border
		    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void drawM(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// Draw top border
		    drawHorizontalLine(x, y, width, lineThickness, boxColor);
		    // Draw bottom border
		    drawVerticalLine(x, y, height, lineThickness, boxColor);
		    drawVerticalLine(x + width/2 - lineThickness, y, height/2, lineThickness, boxColor);
		    // Draw right border
		    drawVerticalLine(x + width - lineThickness, y, height, lineThickness, boxColor);
}

void drawS(int x, int y, int width, int height, u32 boxColor, int lineThickness) {
	// Draw top border
		    drawHorizontalLine(x, y, width, lineThickness, boxColor);
		    // Draw bottom border
		    drawHorizontalLine(x, y + height/2 - lineThickness, width, lineThickness, boxColor);
		    drawHorizontalLine(x, y + height - lineThickness, width, lineThickness, boxColor);
		    // Draw left border
		    drawVerticalLine(x, y, height/2, lineThickness, boxColor);
		    // Draw right border
		    drawVerticalLine(x + width - lineThickness, y + height/2 - lineThickness, height/2, lineThickness, boxColor);
}

// (You would have similar functions draw1, draw2, ..., draw9)

//---------------------------------------------------------------------
// drawDigitBox: Uses switch-case to choose which digit-drawing function to call.
// x, y specify the top-left of the digit area, and the digit area is 20x30 pixels.
//---------------------------------------------------------------------
void drawDigitBox(char digit, int x, int y, u32 color) {
    int width = 20;
    int height = 30;
    int thickness = 2;
    switch (digit) {
        case '0': draw0(x, y, width, height, color, thickness); break;
        case '1': draw1(x, y, width, height, color, thickness); break;
        case '2': draw2(x, y, width, height, color, thickness); break;
        case '3': draw3(x, y, width, height, color, thickness); break;
        case '4': draw4(x, y, width, height, color, thickness); break;
        case '5': draw5(x, y, width, height, color, thickness); break;
        case '6': draw6(x, y, width, height, color, thickness); break;
        case '7': draw7(x, y, width, height, color, thickness); break;
        case '8': draw8(x, y, width, height, color, thickness); break;
        case '9': draw9(x, y, width, height, color, thickness); break;
        default: break;
    }
}

//---------------------------------------------------------------------
// displayScoreboard
// Clears the screen to black, draws the "SCOREBOARD" title, and then
// draws empty digit boxes for each score entry (with a 30-pixel gap between).
// Starting x for boxes: 320, starting y: 250.
//---------------------------------------------------------------------
void displayScoreboard(const int *scoreEntries, int numEntries) {
    // Clear the screen to black.
    clearScreen(0x000000);

    // Draw the title "SCOREBOARD" (using your existing drawScoresTitle function).
    drawScoresTitle(0xFFFFFF);

    int boxStartX = 320;
	int boxStartY = 250;
	int boxWidth = SCREEN_WIDTH - 320 - 100; // leaving some right padding as well
	int boxHeight = 40;                // height of each score box
	int verticalSpacing = 30;          // vertical gap between boxes

	// For each score entry
	for (int i = 0; i < numEntries; i++) {
		int currentBoxY = boxStartY + i * (boxHeight + verticalSpacing);
		// Draw the empty box for the score entry
		drawBox(boxStartX, currentBoxY, boxWidth, boxHeight, 0xFFFFFF, 2);

		// Convert the score to a string so we can process each digit.
		char scoreStr[16];
		sprintf(scoreStr, "%d", scoreEntries[i]);
		int len = strlen(scoreStr);

		// Define the digit area parameters:
		int digitPaddingLeft = 5; // padding inside the box from the left
		int digitPaddingTop = 5;  // padding inside the box from the top
		int digitWidth = 20;
		int digitHeight = 30;
		int digitSpacing = 3;

		// Starting coordinates for digits within the box
		int digitStartX = boxStartX + digitPaddingLeft;
		int digitStartY = currentBoxY + digitPaddingTop;
		int currentDigitX = 0;
		// For each digit in the score string, draw the corresponding digit.
		for (int j = 0; j < len; j++) {
			currentDigitX = digitStartX + j * (digitWidth + digitSpacing);
			// Use switch-case to call the appropriate digit drawing function.
			drawDigitBox(scoreStr[j], currentDigitX, digitStartY, 0xFFFFFF);
		}
		drawM(currentDigitX + (digitWidth * 1) + (digitSpacing * 2), digitStartY, 20, 30, 0xFFFFFF, 2);
		drawS(currentDigitX + (digitWidth * 2) + (digitSpacing * 3), digitStartY, 20, 30, 0xFFFFFF, 2);
	}

    Xil_DCacheFlush();
    xil_printf("Scoreboard displayed with %d score boxes.\n", numEntries);
}
