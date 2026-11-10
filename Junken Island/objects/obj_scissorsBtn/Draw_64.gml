draw_set_color(btn_Color2)
draw_rectangle(x5, y5, x6, y6, false)
 
// Draw the text centered neatly over the button
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(text_Color2);
draw_text(1680, 45, "Scissors");

// Always reset alignment so you don't break other UI rendering
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)

if (show_scissors) {
	draw_sprite(spr_scissors, 0, 960, 540)
}