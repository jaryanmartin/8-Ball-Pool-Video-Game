#ifndef RENDER_H
#define RENDER_H

#include "xil_types.h"

#include "objects.h"
#include "playermode.h"

#define LFSR_BASE_ADDR  0x43C00000

extern uint32_t *image_buffer;
extern const int buffer_width;
extern const int buffer_height;
extern int * pooltable_image;
extern int * loading_screen;
extern int * menu_screen;
extern int * settings;
extern int * gamemode;
extern int * nineball;

extern int prev_ball_x[MAX_BALLS];
extern int prev_ball_y[MAX_BALLS];
extern double prev_ball_angle[MAX_BALLS];

extern double prev_stick_basex;
extern double prev_stick_basey;
extern double prev_stick_tipx;
extern double prev_stick_tipy;
extern double prev_angle;

/* ---------------------------------------------------------------------------- *
 *   Sprite Rendering functions to draw and erase images stored as data files   *
 * ---------------------------------------------------------------------------- */
void render_sprite(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, double x, double y);
void clear_sprite(uint32_t *buffer, int *background, int sprite_width, int sprite_height, double x, double y);

/* ---------------------------------------------------------------------------- *
 *         Rendering Functions for drawing and erasing the aiming line          *
 * ---------------------------------------------------------------------------- */
void clear_aiming_line(uint32_t *buffer, int *background, double start_x, double start_y, double angle);
void draw_aiming_line(uint32_t *buffer, int *background, double start_x, double start_y, double angle, uint32_t color);

/* ---------------------------------------------------------------------------- *
 *         Function for updating cuestick struct values to VGA display          *
 * ---------------------------------------------------------------------------- */
void update_cuestick();

/* ---------------------------------------------------------------------------- *
 *         Function for rotating cuestick struct values to VGA display          *
 * ---------------------------------------------------------------------------- */
void rotated_stick(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, double tipx, double tipy, double angle);
void clear_rotated_stick(uint32_t *buffer, int *background, int sprite_width, int sprite_height, double tipx, double tipy, double angle);

/* ---------------------------------------------------------------------------- *
 *           Functions for updating ball struct values to VGA display           *
 * ---------------------------------------------------------------------------- */
void update_ball();
void update_ball_index(int ball_index);
void init_prev_ball_positions();
void update_all_balls();

/* ---------------------------------------------------------------------------- *
 *           Functions for rotating ball struct values to VGA display           *
 * ---------------------------------------------------------------------------- */
void update_rotatedball_index(int ball_index);
void update_all_rotated_balls();
void update_rotated_ball();
void rotated_ball(uint32_t *buffer, int *sprite, int sprite_width, int sprite_height, int ballx, int bally, double angle);
void clear_rotated_ball(uint32_t *buffer, int *background, int sprite_width, int sprite_height, int ballx, int bally, double angle);

/* ---------------------------------------------------------------------------- *
 *                VGA pixel drawing functions for options selecting             *
 * ---------------------------------------------------------------------------- */
int set_intensity(int x, int y, int frame);
void glow_effect(int x, int y, int width, int height, int frame);
void outline_box(uint32_t *buffer, int x, int y, int width, int height, uint32_t colour);
void highlight_glow_box(uint32_t *buffer, int x, int y, int width, int height, int frame, uint32_t colour);
void highlight_glow_checkmark(uint32_t *buffer, int x, int y, int width, int height, int frame, uint32_t colour);
void draw_checkmark(uint32_t *buffer, int x, int y, int width, int height, uint32_t colour);

/* ---------------------------------------------------------------------------- *
 *                     Player Swapping VGA Rendering Functions                  *
 * ---------------------------------------------------------------------------- */
void highlight_player(uint32_t *buffer, int *background, int currentPlayer, int frame);
void redraw_pocketed_balls(uint32_t *buffer);


#endif
