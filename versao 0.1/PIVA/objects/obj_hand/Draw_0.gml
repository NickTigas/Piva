x_pos = room_width/2 - handCount/2*(card_width+3) + card_width/2;
// conta q faz as cartas centralizarem quando forem compradas

for( i =0; i < handCount;i++){
	if(hand[i] > 0){
		draw_sprite(sprite_vetor[hand[i]], -1,  x_pos+(3+card_width)*i, y_pos);
	}
}
// 228, 826