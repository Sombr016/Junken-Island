draw_self();
if(debug) {
	draw_text_transformed(x-40,y-20,"Player Board Position: "+string(playerBoardPosition),1,1,0);
}

//Text for player number. Affected by player_color;
draw_text_transformed_colour(x,y+20,playerNumber,1.5,1.5,0,player_color,player_color,player_color,player_color,1);