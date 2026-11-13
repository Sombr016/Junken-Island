/// @description Turn Checks.


//Sets playerTurn back to 1 when reaching max players.
if(global.playerTurn >= players && !stopTurns) {
		global.playerTurn = 0;
		global.turnNumber++;
	}
	if (!stopTurns) {
		if(immediatelyStartTurn) {
			alarm[0] = 1;
			immediatelyStartTurn = false;
		}
		alarm[0] = 60;
}
show_debug_message("obj_boardGame: UE[0] Line 12:  Player "+string(global.playerTurn+1)+" is now up!");