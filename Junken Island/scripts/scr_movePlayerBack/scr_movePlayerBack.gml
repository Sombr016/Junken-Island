///@description Moves palyer back a set amount of positions.
///@param INT playerNum - The player to move back.
///@param INT positonsToMoveBack - You really need an explanation for this one?
function scr_movePlayerBack(playerNum,positionsToMoveBack){
	global.playerTilePositions[playerNum-1] = global.playerTilePositions[playerNum-1] - positionsToMoveBack;
	if(global.playerTilePositions[playerNum-1] <= 0) {
		global.playerTilePositions[playerNum-1] = 0;
	}
}