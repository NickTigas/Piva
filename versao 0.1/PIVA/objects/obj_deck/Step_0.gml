if(keyboard_check_released(vk_up)){
	face_up = 1;
	deck_buffer_x = - card_widht-5;
}
if(keyboard_check_released(vk_down)){
	face_up = 0;
	deck_buffer_x = .4;
}
/* pressed = quando pressionar o botao acontece a acao
   released = quando soltar o botao acontece a acao
*/
if(keyboard_check_released(vk_left)){
	scr_embaralhar_deck();
}
