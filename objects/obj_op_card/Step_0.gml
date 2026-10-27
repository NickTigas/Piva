if(player.handCount <=8){
	x_pos = room_width/2 - player.handCount/2*(card_width+3) +35+ card_width/2 + (3+card_width)*hand_posicao;
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
if(player.card_view){
	sprite_index = sprite_vetor[cardNum];
}
else{
	sprite_index = spr_unicard_back;
}
if(player.hand[hand_posicao] == 0){
	player.handCard[hand_posicao] = noone;
	instance_destroy();
}
if(mouse_check_button_released(mb_left)){
	selected = false;
}
	