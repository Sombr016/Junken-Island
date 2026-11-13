///@description Draws text if the game is won.
if(gameWon) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,
	"Player "+string(playerWon)+" has won the game!");
}