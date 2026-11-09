//Debug. Automatically sets the next turn.
if(keyboard_check_pressed(ord("O"))) {
	if(global.playerTurn >= players) {
		global.playerTurn = 1;
	}
	else {
		global.playerTurn++;
	}
	show_debug_message("Player "+string(global.playerTurn)+" is now up!");
}