///@description Moves palyer back a set amount of positions.
function scr_movePlayerBack(playerNum,positionsToMoveBack){
	global.playerTilePositions[playerNum-1] = global.playerTilePositions[playerNum-1] - positionsToMoveBack;
}