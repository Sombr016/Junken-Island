//If the player object requests for the next turn, do so and turn off the flag.

//if(room == BoardRoom) { doOverlapCheck = true;} else { doOverlapCheck = false; }

//If players need to move back to their global squares, then do so.
if(global.movePlayersBack) {
	for (var i = 0; i < instance_number(obj_playerBase); ++i){
		playerRef = instance_find(obj_playerBase,i);
		playerRef.positionsToMove = global.playerTilePositions[playerRef.playerNumber-1]-playerRef.playerBoardPosition;
	}
	global.movePlayersBack = false;
}
//If the player requests the next turn, then check if stopTurns is off and if the camera isn't moving.
//If so, then start the next turn.
if(turnRequested && !stopTurns && !global.isCameraMoving) {
	event_user(0);
	turnRequested = false;
}

//Checks every 15 frames to see if the game needs to stop.
if(alarm[1] < 0) {
	alarm[1] = 15;
}