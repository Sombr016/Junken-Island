///@description Moves players to the global board position.
playerBoardPosition = global.playerTilePositions[playerNumber-1];
playerBoardPosition = clamp(playerBoardPosition,0,global.numberOfSquares);
//show_debug_message(desiredPosition);
//show_debug_message(playerBoardPosition);
//targetX = path_get_point_x(pathReference,playerBoardPosition);
//targetY = path_get_point_y(pathReference,playerBoardPosition);
x = path_get_point_x(pathReference,playerBoardPosition);
y = path_get_point_y(pathReference,playerBoardPosition);
/*
if(abs(x-targetX) > 1 and abs(y-targetY) > 1) {
	speed = playerMovementSpeed
}
*/