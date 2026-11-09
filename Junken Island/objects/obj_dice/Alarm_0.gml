///@description The Spin Event

//Slows down the dice spin until it hits the slowDownThreshold.
//When the slowDownThreshold is hit, roll until the desired die number is hit, then stop spinning.
if(image_speed <= slowDownThreshold) {
	alarm[0] = 1;
	if(int64(image_index) == (diceValue-1)) {
		image_speed = 0;
		spinFinal = true;
	}
}
else {
	image_speed = image_speed - (1/spriteFrameSpeed);
}

//show_debug_message(image_speed);