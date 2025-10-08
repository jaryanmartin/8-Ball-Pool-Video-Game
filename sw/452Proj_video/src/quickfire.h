#ifndef QUICKFIRE_H
#define QUICKFIRE_H


#include "xil_cache.h"
#include "xil_printf.h"
#include <string.h>
#include <stdio.h>

void displayTimer(int minutes, int seconds, int x, int y, u32 color);
void Timer_feature();
void clear_digits(int x, int y);
void bonus_time(int seconds);


#endif
