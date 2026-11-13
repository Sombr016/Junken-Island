///@description Takes the game back to the board and cleans up all used variables. Hopefully.

//Destroy both players.
instance_destroy(battlePlayer1);
instance_destroy(battlePlayer2);

//Set RPS players back to default, and move the players back to the board.
global.RPSPlayers = [-1,-1];
global.movePlayersBack = true;


//Access obj_boardGame to set the alarm to restart the boardGame.
if(instance_exists(obj_boardGame)) {
	with(obj_boardGame) {
		alarm[3] = other.startGameAgainTimer;
	}
}
room_goto(BoardRoom);