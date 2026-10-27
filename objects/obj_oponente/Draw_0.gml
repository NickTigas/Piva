for(i=0;i< deckCount; i++){
	draw_sprite_ext(spr_unicard_back, -1, deck_x - deck_buffer_x*i, deck_y - deck_buffer_y*i, 1,1,180,c_white,1);
}

for(i=0;i< handCount;i++){
	card_sprite = spr_unicard_back;
	if(handCount <=8){
		x_pos = room_width/2 - handCount/2*(card_width+3) + card_width/2 + (3+card_width)*(i-.5);
	}
	else{
		x_pos = room_width/2 - handCount/2*(room_width/handCount) + card_width/2 + (room_width/handCount)*i;
	}
	draw_sprite(card_sprite, -1, x_pos, card_height/2-(45)); // mão impressa na porra do oponente hard CODE MESMO FDS
}

for(i = 0; i< discardCount; i++){
	card_sprite = sprite_vetor[discard[i]];
	if(discard[i] > 0){
		draw_sprite_ext(card_sprite, -1, discard_x+deck_buffer_x*(i-175), discard_y-deck_buffer_y*i,1,1,180,c_white,1);
	}
}