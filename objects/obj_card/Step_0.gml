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
// fala pro card ir pra DP pilha de discarte
if(alarm[2] >-1){
	if(point_distance(x,y,player.discard_x,player.discard_y) > 10){
		move_towards_point(player.discard_x,player.discard_y, 10);
	}
	else{
		x = player.discard_x;
		y = player.discard_y;
		speed = 0;
	}
}
else if(card_in_hand == true){
	if(player.handCount <=8){
		x_pos = room_width/2 - player.handCount/2*(card_width+3) + card_width/2 + (3+card_width)*hand_posicao;
	}
	else{
		x_pos = room_width/2 - player.handCount/2*(room_width/player.handCount) + card_width/2 + (room_width/player.handCount)*hand_posicao;
		// centraliza a mão no meio da sala
	}
	
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

if(mouse_check_button_released(mb_left)){
	selected = false;
}