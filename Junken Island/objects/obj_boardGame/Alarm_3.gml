///@description Some breathing room before the game restarts.

stopTurns = false;
global.turnReady = true;
immediatelyStartTurn = true;


//A copy of event[0], but done instantly.
if(global.playerTurn >= players && !stopTurns) {
		global.playerTurn = 0;
		global.turnNumber++;
}
if(!stopTurns) {
	global.playerTurn++;
	displayTurnText = true;
	alarm[4] = textDisplayDuration;
}

show_debug_message("obj_boardGame: UE[0] Line 12:  Player "+string(global.playerTurn+1)+" is now up!");
