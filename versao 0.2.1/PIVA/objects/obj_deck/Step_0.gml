if(keyboard_check_released(vk_up)){
	player.face_up = 1;
	player.deck_buffer_x = - card_width-5;
}
if(keyboard_check_released(vk_down)){
	player.face_up = 0;
	player.deck_buffer_x = .4;
}
/* pressed = quando pressionar o botao acontece a acao
   released = quando soltar o botao acontece a acao
*/
if(keyboard_check_released(vk_left)){
	with(player)
	{
		scr_embaralhar_deck();
	}
}
if(keyboard_check_released(vk_escape)){
	game_restart();
}
