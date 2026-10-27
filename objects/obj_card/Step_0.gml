if(card_drawn == true)
{
	// tempo padrao
	if(alarm[0] == -1)
	{
		alarm[0] = 1;
		// tempo pra 1
		// alaram eh basicamente um timer, fazer coisas em uma quantidade de frames ou tempo
	}
}
if(card_in_hand == true){
	x_pos = room_width/2 - player.handCount/2*(card_width+3) + card_width/2 + (3+card_width)*hand_posicao;
	if(point_distance(x,y,x_pos,y_pos) > 10){
		move_towards_point(x_pos,y_pos, 10);
	}
	else{
		x = x_pos;
		y = y_pos;
		speed = 0;
	}
	depth = -1000;
}
else{
	depth = -hand_posicao;
}
if(mouse_check_button_released(mb_left)){
	selected = false;
}