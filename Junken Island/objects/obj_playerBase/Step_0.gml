//Checks if there are positions to move on the board. If so, then move.
if(positionsToMove > 0) {
	desiredPosition = clamp((playerBoardPosition+positionsToMove) / path_get_number(pathReference),0,1);
	playerBoardPosition += positionsToMove
	playerBoardPosition = clamp(playerBoardPosition,0,global.numberOfSquares);
	//show_debug_message(desiredPosition);
	//show_debug_message(playerBoardPosition);
	x = path_get_x(pathReference,desiredPosition);
	y = path_get_y(pathReference,desiredPosition);
	positionsToMove = 0;
	global.playerTilePositions[playerNumber-1] = playerBoardPosition;
}

//A flag to always make the human-controlled player not ready when it isn't their turn
if(global.playerTurn != playerNumber && isPlayer) {
	isPlayerReady = false;
}

//If the setGlobalIsPlayer flag is active, then see UE[0].
if(setGlobalIsPlayer) {
	event_user(0);
}



