///@description Draws text.
if(gameWon) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,
	"Player "+string(playerWon)+" has won the game!");
}


if(debug) {
	draw_set_halign(fa_right);
	draw_set_color(c_white);
	draw_text(display_get_gui_width()-10,30,
	"Current player turn: "+string(global.playerTurn));
	draw_text(display_get_gui_width()-10,50,
	"Player Positions: "+string(global.playerTilePositions));
	draw_text(display_get_gui_width()-10,70,
	"Is turn ready? "+string(global.turnReady));
	draw_text(display_get_gui_width()-10,90,
	"Alarm[0]: "+string(alarm[0])+
	" Alarm[2]: "+string(alarm[2])+
	" Alarm[3]: "+string(alarm[3]));
}