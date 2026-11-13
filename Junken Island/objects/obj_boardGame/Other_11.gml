///@description Various Square Checks


//Checks if the game is won. If so, determine the winner and stop all turns.
for(var i = 0; i < array_length(global.playerTilePositions); i++) {
	if(global.playerTilePositions[i] >= global.numberOfSquares && !gameWon) {
		stopTurns = true;
		global.turnReady = false;
		gameWon = true;
		playerWon = i+1;
		show_debug_message("obj_boardGame: UE[1] Line 11: "+string(playerWon)+" has won the game!");
	}
}
//Checks to see if two players share the same square. If so, stop the game and print a debug message.
if(doOverlapCheck) {
	for (var i = 0; i < array_length(global.playerTilePositions); i++) {
		for (var k = 0; k < array_length(global.playerTilePositions); k++) {
			if(global.playerTilePositions[i] != 0) {
				if(global.playerTilePositions[i] == global.playerTilePositions[k] && (i != k)) { //Overlap check
					//Hey, stop those turns immediately!
					global.turnReady = false;
					stopTurns = true;
					//global.playerTurn = -1;
					if(alarm[2] < 0 && room == BoardRoom) {
						show_debug_message("obj_boardGame: UE[1] Line 22: Stopped turns from progressing.");
						show_debug_message("obj_boardGame: UE[1] Line 23: Going to the Battle Room.");
						global.RPSPlayers = [i+1,k+1];
						show_debug_message("obj_boardGame: UE[1] Line 26: RPSPlayers are: "+string(global.RPSPlayers[0])+" "+string(global.RPSPlayers[1]));
						alarm[2] = goingToBRTimer;
						//Goes through each player object and sets a flag to check if they are a human-controlled object.
						for (var p = 0; p < instance_number(obj_playerBase); ++p)
							{
							    playersRef = instance_find(obj_playerBase,p);
								playersRef.setGlobalIsPlayer = true;
							}
						
					}
				}
			}
		}
	}
}


