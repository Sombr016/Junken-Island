///@description The amount of time before the next turn starts.
if(!stopTurns) {
	global.playerTurn++;
}
if(global.playerTurn > 0) {
	displayTurnText = true;
	alarm[4] = textDisplayDuration;
}