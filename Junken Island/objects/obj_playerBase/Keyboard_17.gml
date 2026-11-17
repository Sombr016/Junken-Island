///@description Cheat Codes

//Moves the player up by one position. Triggered using Ctrl+playerNumber.
if(keyboard_check_pressed(ord(playerNumber))) {
	positionsToMove += 1;
	//show_debug_message("Positions to move: "+string(positionsToMove));
}