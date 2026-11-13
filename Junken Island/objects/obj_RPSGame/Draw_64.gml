///@description shows various variables because they vary

draw_set_color(c_white);
if(debug) {
	draw_text(60,150,"Player 1 Health: "+string(playersHealth[0]));
	draw_text(60,180,"Player 2 Health: "+string(playersHealth[1]));
	
	draw_text(60,250,"Player 1 Position: "+string(global.playerTilePositions[global.RPSPlayers[0]-1]));
	draw_text(60,280,"Player 2 Position: "+string(global.playerTilePositions[global.RPSPlayers[1]-1]));
}
