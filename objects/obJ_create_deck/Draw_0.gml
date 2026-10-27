for(i=0;i<20;i++){
	card_sprite = sprite_vetor[deck[i]];
	if(deckCount <=8){
		x_pos = room_width/2 - deckCount/2*(card_width+3) + card_width/2 + (3+card_width)*i;
	}
	else{
		x_pos = room_width/2 - deckCount/2*(room_width/deckCount) + card_width/2 + (room_width/deckCount)*i;
		// centraliza a mão no meio da sala
	}
	if(deck[i] > 0){
		draw_sprite(card_sprite, -1, x_pos, yview);
	}
}

draw_set_colour(c_black);
draw_text(room_width/2-2, room_height/2+100, string(deckCount));