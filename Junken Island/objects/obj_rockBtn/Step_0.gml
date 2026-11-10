var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)

if (mouse_check_button_pressed(mb_left)){
	if (point_in_rectangle(mx, my, x1, y1, x2, y2)){
		
		with (obj_rockBtn) {
			show_rock = true
			show_paper = false
			show_scissors = false
		}
	}
}