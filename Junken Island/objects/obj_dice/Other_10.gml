/// @description Starts the die roll.
image_speed = 1;
spinFinal = false;

slowDownThreshold *= global.speedMult;
slowDownThreshold = clamp(slowDownThreshold, 0, 1);
//Weighed dice check.
if(isWeighed) {
	if(debug) {show_debug_message(weights)}
	diceValue = WeighedDiceRoll(faces,weights);
}
//Non weighed dice check.
else {
	diceValue = DiceRoll(faces);
}
