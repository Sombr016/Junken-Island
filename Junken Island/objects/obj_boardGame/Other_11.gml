///@description Various Square Checks


//Checks if the game is won. If so, determine the winner and stop all turns.
for(var i = 0; i < array_length(global.playerTilePositions); i++) {
	if(global.playerTilePositions[i] >= global.numberOfSquares) {
		stopTurns = true;
		gameWon = true;
		playerWon = global.turnNumber;
	}
}
//Checks to see if two players share the same square. If so, stop the game and print a debug message.
for (var i = 0; i < array_length(global.playerTilePositions); i++) {
	for (var k = 0; k < array_length(global.playerTilePositions); k++) {
		if(global.playerTilePositions[i] != 0) {
			if(global.playerTilePositions[i] == global.playerTilePositions[k] && (i != k)) {
				stopTurns = true;
				global.playerTurn = -1;
				show_debug_message("obj_boardGame: UE[0] Line 7: Stopped turns from progressing.");
			}
		}
	}
}