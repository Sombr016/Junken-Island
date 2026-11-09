/// @description Turn Checks.


//Sets playerTurn back to 1 when reaching max players.
if(global.playerTurn >= players && !stopTurns) {
		global.playerTurn = 1;
		global.turnNumber++;
	}
	else if (!stopTurns) {
		alarm[0] = 30;
}
show_debug_message("Player "+string(global.playerTurn)+" is now up!");