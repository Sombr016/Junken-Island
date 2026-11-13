///@description Checks if the turns are stopped. If they are, then set the RPSisPlayer flag.
if(instance_exists(obj_boardGame)) {
	if(obj_boardGame.stopTurns) {
		//show_debug_message("HI!");
		for(var i = 0; i < array_length(global.RPSPlayers); i++) {
			if(global.RPSPlayers[i] == playerNumber) {
				global.RPSisPlayer[i] = isPlayer;
			}
		}
	}
	setGlobalIsPlayer = false;
}