#include "states.h"

#include "xil_printf.h"

volatile GameState currentState;
volatile GameMode currentGameMode;
RunningPhase currentPhase;
RunningMode currentMode;

// Function to set the initial state to be the title screen state
void init_game_state() {
	currentState = INIT_STATE;
}

// Function to change the state of the game
void changeState(GameState state) {
	currentState = state;
}

// Function to change the phase of the game while in the Running State
void changePhase(RunningPhase phase) {
	currentPhase = phase;
}

// Function to change the mode of the game while in the Running State
void changeMode(RunningMode mode) {
	currentMode = mode;
}

// Function to change the gamemode of the game
void changeGameMode(GameMode gamemode) {
	currentGameMode = gamemode;
}
