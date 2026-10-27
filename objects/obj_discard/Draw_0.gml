with(player){
	for(i=0; i < discardCount; i++){
		if(discard[i] > 0){
			draw_sprite(sprite_vetor[discard[i]], -1, discard_x+deck_buffer_x*(i+155),discard_y-deck_buffer_y*(i-205));
			// aparecer a pilha da DP
		}
	}
}