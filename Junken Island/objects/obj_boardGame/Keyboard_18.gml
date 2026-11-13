///@description Gameboard Cheat Codes

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

//Debug. Stops all player turns and turns off player dicerolling.
if(keyboard_check_pressed(ord("T"))) {
	stopTurns = !stopTurns;
	global.turnReady = !global.turnReady;
}

//Debug. Toggles the player square overlapping check.
if(keyboard_check_pressed(ord("U"))) {
	doOverlapCheck = !doOverlapCheck
}

//Debug. Restarts the room. Set to E because Alt+R opens up nVidia stats.
//Currently doesn't ACTUALLY restart the room, since a lot of global variables determine room state.
if(keyboard_check_pressed(ord("E"))) {
	room_restart()
}

//Debug. Restarts the game.
if(keyboard_check_pressed(ord("W"))) {
	game_restart()
}