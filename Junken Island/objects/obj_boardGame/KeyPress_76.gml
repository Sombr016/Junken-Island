///@description Loads game state.

//If no turn checks are occuring...
//No battle transition is about to happen...
//And the game isn't returning from battle...
//Save the game.
if(alarm[0] < 0 and alarm[2] < 0 and alarm[3] < 0) {
	Load_game();
	stopTurns = false;
	global.turnReady = true;
	gameWon = false;
	playerWon = -1;
}