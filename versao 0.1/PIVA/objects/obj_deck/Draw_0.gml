draw_set_color(c_white);
// cor do texto
draw_text(100, 200, string(mouse_x) + " " + string(mouse_y));

draw_self();

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

