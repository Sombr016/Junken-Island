draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(!isPlayerReady && global.playerTurn == playerNumber) { draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Press space to continue."); }