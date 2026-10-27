draw_self();

// muda o sprite padrao para o novo sprite

if(selected == true){
	x = mouse_x;
	y = mouse_y;
	scr_draw_card_info(cardNum);
	if(mouse_y > y_pos){
	draw_sprite(big_sprite_vetor[cardNum], -1, room_width/2, room_height/2);
	}
}