///@description shows various variables because they vary

draw_set_color(c_white);
if(debug) {
	draw_set_halign(fa_left);
	draw_text(60,150,"Player "+string(global.RPSPlayers[0])+" Health: "+string(playersHealth[0]));
	draw_text(60,180,"Player "+string(global.RPSPlayers[1])+" Health: "+string(playersHealth[1]));
	
	draw_text(60,250,"Player "+string(global.RPSPlayers[0])+" Position: "+string(global.playerTilePositions[global.RPSPlayers[0]-1]));
	draw_text(60,280,"Player "+string(global.RPSPlayers[1])+" Position: "+string(global.playerTilePositions[global.RPSPlayers[1]-1]));

	draw_text(60,310,"AI Response Speed "+string(AIResponseLow)+"-"+string(AIResponseHigh));
}
