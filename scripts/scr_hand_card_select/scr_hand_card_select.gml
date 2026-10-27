function scr_hand_card_select(){
	var i;
	for(i = player.handCount-1; i>=0;i--){
		if(mouse_x > player.handCard[i].x - card_width/2 && mouse_x < player.handCard[i].x + card_width/2){
			return i;
			//ve a ultima carta na mao pra esquerda e ve onde ta o cursor pra saber onde ta selecionando a carta
		}
	}
	return -1;
	
}