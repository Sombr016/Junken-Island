btn_Width = 200
btn_Height = 50

//Button coordinates
x1 = x
y1 = y;
x2 = x1+btn_Width
y2 =  y1+btn_Height



text_Color = make_color_rgb(101, 67, 33)

show_rock = false
show_paper = false
show_scissors = false

switch(buttonType) {
	case 0:
		button = "Rock";
	break;
	case 1:
		button = "Paper";
	break;
	case 2:
		button = "Scissors";
	break;
	default:
		show_debug_message("Not allocated properly button yeah you get it.");
}
