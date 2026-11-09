//show_debug_message(spinFinal);

//If spinning isn't done, continously call the alarm.
if(spinFinal == false) {
	sprite_index = Dice;
	if(alarm[0] <= 0) {
		alarm[0] = 5;
	}
}

//Follows the player if there is a playerReference.
if(playerReference != noone) {
	x = playerReference.x;
	y = playerReference.y-40;
}