//If the player object requests for the next turn, do so and turn off the flag.
if(turnRequested) {
	event_user(0);
	turnRequested = false;
}
//Checks every 15 frames to see if the game needs to stop.
if(alarm[1] < 0) {
	alarm[1] = 15;
}