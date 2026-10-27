if(selected == true){
	for(i = deckCount-1; i >= 0; i--){
		if(deck[i] >0 ){
			card_sprite = big_sprite_vetor[deck[i]];
			if(scr_check_total(deck[i]) == 2){
				draw_sprite_ext(card_sprite, -1, deck_x_2+(deckCount - 1 - i)*(big_card_width+10), yview, 1, 1, 0, c_white, 0.5);
			}
			else{
			draw_sprite(card_sprite, -1, deck_x_2+(deckCount - 1 - i)*(big_card_width+10), yview);
			// distancia das cartas
			}
		}
	}
}
// vai printar o deck inteiro

draw_self();