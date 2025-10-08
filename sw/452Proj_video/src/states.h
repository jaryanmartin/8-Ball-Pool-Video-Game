#ifndef GAME_STATE_H
#define GAME_STATE_H

typedef enum {
	INIT_STATE,
	MENU_STATE,
	RUNNING_STATE,
	GAMEMODE_STATE,
	SETTING_STATE
} GameState;

typedef enum {
	BREAK_PHASE,
	PLAYER_PHASE,
	FOUL_PHASE,
	GAMEOVER_PHASE,
} RunningPhase;

typedef enum {
	PLACEMENT_MODE,
	SHOOTING_MODE,
	CONFIRM_MODE
} RunningMode;


typedef enum {
	EIGHTBALL,
    NINEBALL,
	QUICKFIRE
} GameMode;

extern volatile GameMode currentGameMode;
extern volatile GameState currentState ;
extern RunningPhase currentPhase;
extern RunningMode currentMode;

// Function to set the initial state to be the title screen state
void init_game_state();

// Function to change the state of the game
void changeState(GameState state);

// Function to change the state of the game
void changePhase(RunningPhase phase);

// Function to change the mode of the game's running gamemode
void changeMode(RunningMode mode);

// Function to change the gamemode of the game
void changeGameMode(GameMode gamemode);

#endif
