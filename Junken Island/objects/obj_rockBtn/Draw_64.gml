draw_set_color(btn_Color)
draw_rectangle(x1, y1, x2, y2, false)
 
// Draw the text centered neatly over the button
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(text_Color)
draw_text(1280, 45, "Rock")

// Always reset alignment so you don't break other UI rendering
draw_set_halign(fa_left)
draw_set_valign(fa_top)

if (show_rock) {
	draw_sprite(spr_rock, 0, 960, 540)
}

if (show_paper) {
	draw_sprite(spr_paper, 0, 960, 540)
}

if (show_scissors) {
	draw_sprite(spr_scissors, 0, 960, 540)
}