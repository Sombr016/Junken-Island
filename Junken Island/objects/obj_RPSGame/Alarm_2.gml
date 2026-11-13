///@description Round Won Check.

//Checks to see who has won the round.


if RPSDecisions[0] == "Rock" && RPSDecisions[1] == "Scissors" { playersHealth[1]--; }
if RPSDecisions[0] == "Paper" && RPSDecisions[1] == "Rock" { playersHealth[1]--; }
if RPSDecisions[0] == "Scissors" && RPSDecisions[1] == "Paper" { playersHealth[1]--; }

if RPSDecisions[1] == "Rock" && RPSDecisions[0] == "Scissors" { playersHealth[0]--; }
if RPSDecisions[1] == "Paper" && RPSDecisions[0] == "Rock" { playersHealth[0]--; }
if RPSDecisions[1] == "Scissors" && RPSDecisions[0] == "Paper" { playersHealth[0]--; }

//If player1's health reaches zero, then stop the RPS game, move back the player a set amount of tiles, and start the transition alarm (alarm[4])
//between the two different boards (RPSFightRoom->BoardGame)
if(playersHealth[0] == 0) {
	isInRPS = false;
	waitForPlayerInput = true;
	show_debug_message("Player 1 loses!");
	global.playerTilePositions[global.RPSPlayers[0]-1] -= tilePositionsToMoveBack;
	if(global.playerTilePositions[global.RPSPlayers[0]-1] < 0) {
		global.playerTilePositions[global.RPSPlayers[0]-1] = 0;
	}
	alarm[4] = 50;
}
//If player2's health reaches zero, then stop the RPS game, move back the player a set amount of tiles, and start the transition alarm (alarm[4])
//between the two different boards (RPSFightRoom->BoardGame)
else if(playersHealth[1] == 0) {
	isInRPS = false;
	waitForPlayerInput = true;
	show_debug_message("Player 2 loses!");
	global.playerTilePositions[global.RPSPlayers[1]-1] -= tilePositionsToMoveBack;
	if(global.playerTilePositions[global.RPSPlayers[1]-1] < 0) {
		global.playerTilePositions[global.RPSPlayers[1]-1] = 0;
	}
	alarm[4] = 50;
}

//If the game is still going, then redisplay the player buttons.
if(isInRPS) {
	if(global.RPSisPlayer[0]) {
	rockButton1 = instance_create_layer(0,20, "Instances",obj_Rock);
	paperButton1 = instance_create_layer(200,20, "Instances",obj_Paper);
	scissorsButton1 = instance_create_layer(400,20, "Instances",obj_Scissors);
	}
	if(global.RPSisPlayer[1]) {
		rockButton2 = instance_create_layer(800,20, "Instances",obj_Rock);
		paperButton2 = instance_create_layer(1000,20, "Instances",obj_Paper);
		scissorsButton2 = instance_create_layer(1200,20, "Instances",obj_Scissors);
	}
}

//Set the reveal flag to be false, and reset the RPS decisions.
revealDecisions = false;
RPSDecisions = ["Nothing","Nothing"];