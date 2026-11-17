//Checks if there are positions to move on the board. If so, then move.
if(positionsToMove != 0) {
	if(!scr_isPlayerAtGate(playerBoardPosition,array_length(global.gatesActive))) {
		playerBoardPosition += sign(positionsToMove)
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
		positionsToMove -= sign(positionsToMove);
		global.playerTilePositions[playerNumber-1] = playerBoardPosition;
		if(positionsToMove == 0) {
			if(instance_exists(obj_boardGame)) {
				obj_boardGame.turnRequested = true;
			}
		}
	}
	else {
		//If the player is at the gate, then reference the gate object.
		//WARNING! This is a FIRST PASS of the gate system. If multiple gates exist on the board,
		//  then this system will not work. Will need to revise system when board is closer to completion!
		if(playerBoardPosition  && global.playerTurn == playerNumber) {
			obj_gateBase.playerCallingRef = self;
		}
		
	}
}

//A flag to always make the human-controlled player not ready when it isn't their turn
if(global.playerTurn != playerNumber && isPlayer) {
	isPlayerReady = false;
}

//If the setGlobalIsPlayer flag is active, then see UE[0].
if(setGlobalIsPlayer) {
	event_user(0);
}



