draw_set_color(btn_Color)
draw_rectangle(x1, y1, x2, y2, false)
 
// Draw the text centered neatly over the button
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(text_Color);
draw_text(x1+100, y1+10, button);

// Always reset alignment so you don't break other UI rendering
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/* Deprecated. Decided to do on obj_RPSGame rather than relying on the buttons.
if (show_rock) {
	draw_sprite(spr_rock, 0, playerX, playerY-30)
}

if (show_paper) {
	draw_sprite(spr_paper, 0, playerX, playerY-30)
}

if (show_scissors) {
	draw_sprite(spr_scissors, 0, playerX, playerY-30)
}
*/