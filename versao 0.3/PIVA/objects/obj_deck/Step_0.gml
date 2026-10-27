if(keyboard_check_released(vk_up)){
	player.face_up = 1;
	//player.deck_buffer_x = - card_width-5;
}
if(keyboard_check_released(vk_down)){
	player.face_up = 0;
	//player.deck_buffer_x = .4;
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
if(player.face_up){
	with(player){
		if(mouse_y < yview + card_height/2 && mouse_y > yview - card_height/2){
			if(mouse_check_button_pressed(mb_left)){
				xview = deck_x_2 - mouse_x;
			}
			if(mouse_check_button(mb_left)){
				deck_x_2 = xview+ mouse_x;
			}
			else if(deck_x_2 >= deck_x){
				deck_x_2 = deck_x-1;
			}
			else if(deck_x_2 <=(deck_x - (deckCount -1)*(card_width+10) - deckCount*deck_buffer_x)-5){
				deck_x_2 = (deck_x -  (deckCount)*(card_width+10) - deckCount*deck_buffer_x) + 14 + card_width;
			}
		}
	}
}