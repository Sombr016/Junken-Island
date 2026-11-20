///@description Cheat Codes

//Moves the player up by one position. Triggered using Ctrl+playerNumber.
if(keyboard_check_pressed(ord(playerNumber))) {
	global.playerTilePositions[playerNumber-1] = clamp(global.playerTilePositions[playerNumber-1]+1,0,global.numberOfSquares);
	event_user(1);
	//show_debug_message("Positions to move: "+string(positionsToMove));
}

if(keyboard_check_pressed(ord("U"))) {
	debug = !debug;
}