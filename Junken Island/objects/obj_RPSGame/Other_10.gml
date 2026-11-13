///@description Setting up the battle.

isInRPS = true;
RPSDecisions = ["Nothing","Nothing"];

//Creates both player instances.
battlePlayer1 = instance_create_layer(100,room_height/2,"Instances",obj_RPSBase);
battlePlayer2 = instance_create_layer(room_width-100,room_height/2,"Instances",obj_RPSBase);

//Finds player position in the room. Currently used to determine sprite placement.
playerPosition = [[battlePlayer1.x,battlePlayer1.y],[battlePlayer2.x,battlePlayer2.y]]

//A flag as to whether or not to print the RPS sprites.
revealDecisions = false;



//Sets each BP's player Number, as well as setting the isPlayer flag.

battlePlayer1.playerNumber = global.RPSPlayers[0];
battlePlayer2.playerNumber = global.RPSPlayers[1];

battlePlayer1.isPlayer = global.RPSisPlayer[0];
battlePlayer2.isPlayer = global.RPSisPlayer[1];

//A flag to check if the player is in RPS.
ifPlayerInRPS = global.RPSisPlayer[0] or global.RPSisPlayer[1];

//A 2 element array that displays the current battler's health.
playersHealth = [global.maxPlayerHealth[global.RPSPlayers[0]-1],global.maxPlayerHealth[global.RPSPlayers[1]-1]];

if(debug) {
	show_debug_message("Player "+ string(battlePlayer1.playerNumber) +" isPlayer: "+string(battlePlayer1.isPlayer)+
	" Player "+ string(battlePlayer2.playerNumber) +" isPlayer: "+string(battlePlayer2.isPlayer));
}

//Creates the buttons for the respective player to press.
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


