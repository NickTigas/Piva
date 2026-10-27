draw_set_color(c_white);
// cor do texto
draw_text(100, 200, string(mouse_x) + " " + string(mouse_y));

draw_self();

with(player){
	if(!face_up){
		for(i = 0; i < deckCount; i++){
			card_sprite = spr_unicard_back
			if(face_up){
				card_sprite = sprite_vetor[deck[i]];
			}
			if(deck[i] > 0){
				draw_sprite(card_sprite, -1, deck_x+deck_buffer_x*i, deck_y-deck_buffer_y*i);
				// -1 pq a imagem n possui animacao
			}
		}
	}
	else{
		// p/ cada carta que ainda nao se moveu
		for(i = 0; i< deckCount; i++ ){
			if(deck[i] > 0 && !(deck_x_2 < (deck_x - (deckCount - 1 - i)*(card_width+10) + i*deck_buffer_x))){
				draw_sprite(spr_unicard_back, -1, deck_x + i*deck_buffer_x, deck_y - i*deck_buffer_y);
			}
		}
		for(i = deckCount-1; i >= 0; i--){
			if(deck[i] >0 && deck_x_2 < (deck_x - (deckCount - 1 - i)*(card_width+10) + i*deck_buffer_x)){
				card_sprite = sprite_vetor[deck[i]];
				draw_sprite(card_sprite, -1, deck_x_2+(deckCount - 1 - i)*(card_width) + (i+155)*deck_buffer_x, yview-(i-255)*deck_buffer_y);
				// distancia das cartas
			}
		}
	}
}
