var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)

if (mouse_check_button_pressed(mb_left)){
	if (point_in_rectangle(mx, my, x1, y1, x2, y2)){
		switch (buttonType) {
			case 0:
				show_rock = true;
				show_debug_message("Showing "+button);
			break;
			case 1:
				show_paper = true; 
				show_debug_message("Showing "+button);
			break;
			case 2:
				show_scissors = true;
				show_debug_message("Showing "+button);
			break;
			default:
				show_debug_message("This button is not allocated properly. FUCK you.");
			
		}
	}
}