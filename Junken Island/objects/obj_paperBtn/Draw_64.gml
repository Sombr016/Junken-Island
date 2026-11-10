draw_set_color(btn_Color1)
draw_rectangle(x3, y3, x4, y4,false)
 
// Draw the text centered neatly over the button
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(text_Color1);
draw_text(1480, 45, "Paper");

// Always reset alignment so you don't break other UI rendering
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)

if (show_paper) {
	draw_sprite(spr_paper, 0, 960, 540)
}