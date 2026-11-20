///@description Cheat codes (player2)

//Adds to player2's health.
if(keyboard_check_pressed(vk_up)) {
	playersHealth[1]++;
}
//Subtracts from player2's health.
if(keyboard_check_pressed(vk_down)) {
	playersHealth[1]--;
}

if(keyboard_check_pressed(vk_left)) {
	AIResponseHigh--;
}

if(keyboard_check_pressed(vk_right)) {
	AIResponseHigh++;
}