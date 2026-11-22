//This is supposed to draw a grey background when the game is won.
if(gameWon) {
	draw_set_alpha(0.5);
	draw_set_color(c_grey);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
}
