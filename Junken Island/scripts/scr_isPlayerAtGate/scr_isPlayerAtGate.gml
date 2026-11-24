///@description Returns whether or not a player is at a gate.
///@param INT playerBoardPosition -  An integer representation of a player's board position.
///@param INT numOfGates -  How many gates are in the game.
function scr_isPlayerAtGate(playerBoardPosition,numOfGates){
	for(var i = 0; i < numOfGates; i++) {
		if(playerBoardPosition == global.gatesPosition[i] && global.gatesActive[i]) {
			//show_debug_message("Player is at a gate.");
			return (i+1);
		}
	}
	return 0;
}