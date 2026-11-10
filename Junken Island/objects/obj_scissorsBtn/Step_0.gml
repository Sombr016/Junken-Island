var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)

if (mouse_check_button_pressed(mb_left)){
	if (point_in_rectangle(mx, my, x5, y5, x6, y6)){
		
		with (obj_scissorsBtn) {
			show_rock = false
			show_paper = false
			show_scissors = true
		}
	}
}