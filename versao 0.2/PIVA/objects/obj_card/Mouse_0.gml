if(mouse_check_button_pressed(mb_left) && x == x_pos && y == y_pos){
	selected = true;
}

if(selected == true){
	x = mouse_x;
	y = mouse_y;
}