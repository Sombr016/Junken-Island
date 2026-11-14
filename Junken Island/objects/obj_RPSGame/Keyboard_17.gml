///@description Cheat Codes (player1)
//Adds to player1's health.
if(keyboard_check_pressed(vk_up)) {
	playersHealth[0]++;
}
//Subtracts from player1's health.
if(keyboard_check_pressed(vk_down)) {
	playersHealth[0]--;
}


if(keyboard_check_pressed(vk_left)) {
	AIResponseLow--;
}

if(keyboard_check_pressed(vk_right)) {
	AIResponseLow++;
}