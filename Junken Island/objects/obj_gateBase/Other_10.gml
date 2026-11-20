///@description Roll the dice to open the gate.

//So we roll the dice, see where they may fall

var finalRoll = 0;
if(diceRef == noone) {
		//Create a dice reference, scale it, and set spinFinal to false.
		diceRef = instance_create_layer(x-sprite_width,y-sprite_height-30,"Instances",obj_dice,
		{
			faces : gateDieFaces,
			//isWeighed : true, //If you want to weigh the dice.
			//weights : [0.4,0.4,0.2,0,0,0]
		});
		diceRef.scale = 1;
		diceRef.spinFinal = false;
		if(debug) {
			show_debug_message("Gate UE[0]: DiceRef is now created.");
			show_debug_message("Gate UE[0]: DiceValue = "+string(diceRef.diceValue));
		}
}
else {
	/*
	If the diceRef is final, then declare the finalRoll. Destroy the dice, and do one of two things.
		If finalRoll is >= the minimum value to lower the gate, then call alarm[0].
		If finalRoll is below that, then set the player calling reference's positions to move to zero,
			making it so they cannot move past the gate. After that, it calls obj_boardGame to start 
			the next turn.
	*/
	if(diceRef.spinFinal) {
		show_debug_message(diceRef);
		finalRoll = diceRef.diceValue;
		if(debug) {show_debug_message("obj_gateBase UE[0]: DiceValue = "+string(diceRef.diceValue));}
		diceRef.alarm[1] = dicePersistenceTimer*(1/global.speedMult);
		diceRef = noone;
		if(finalRoll >= gateRollSucceed && alarm[0] < 0) {
			alarm[0] = 30;
		}
		else {
			show_debug_message(string(playerCallingRef));
			if(playerCallingRef != noone) {
				playerCallingRef.positionsToMove = 0;
				show_debug_message(string(playerCallingRef.positionsToMove));
				if(instance_exists(obj_boardGame)) {
					obj_boardGame.turnRequested = true;
				}
			}
		}
		playerCallingRef = noone;
	}
}