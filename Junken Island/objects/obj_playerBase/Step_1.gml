//@description DICE ROLL
//Checks if it is this player's turn. If so, then roll the dice.
if(global.playerTurn == playerNumber && global.turnReady && isPlayerReady) {
	//If there isn't a dice, create one, and start the roll.
	if(diceRef == noone) {
		diceRef = instance_create_layer(x,y-40,"Instances",obj_dice);
		diceRef.scale = 0.5;
		diceRef.spinFinal = false;
		diceRef.playerReference = self;
		//show_debug_message("DiceRef is now created.");
		//show_debug_message("DiceValue = "+string(diceRef.diceValue));
	}
	else {
		//If the dice is finished rolling, then set the desired # of positions to move
		//Set the dice reference to destroy, and iterate the player turn.
		if(diceRef.spinFinal) {
			//show_debug_message(diceRef);
			positionsToMove = diceRef.diceValue;
			show_debug_message("obj_playerBase BS 19: DiceValue = "+string(diceRef.diceValue));
			diceRef.alarm[1] = 50;
			diceRef = noone;
			if(instance_exists(obj_boardGame)) {
				obj_boardGame.turnRequested = true;
			}
		}
	}
}
else {
	//If it isn't the player's turn, destroy any dice reference that may exist.
	if(diceRef != noone) {
		instance_destroy(diceRef);
		diceRef = noone;
	}
	if(!isPlayerReady && global.playerTurn == playerNumber) {
		if(keyboard_check_direct(vk_space)) {
			isPlayerReady = true;
		}
	}
}
