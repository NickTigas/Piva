function scr_pilha_select(){
	for(i=1; i <= pilha_count; i++){
		if(mouse_x > room_width/2-pilha_count*20/2+20*i-20 && mouse_x < room_width/2 - pilha_count*20/2+20*i+20){
		if(mouse_y > room_height/2+pilha_count*20/2-20*i-big_card_height/2 && mouse_y < room_height/2 + pilha_count*20/2-20*i+big_card_height/2){
			temp = i;
		}
		}
	}
	if(mouse_x < room_width/2-pilha_count*20/2 || mouse_x > room_width/2 - pilha_count*20/2+20*pilha_count+20){
		temp = -1;
		// se o mouse nao estiver sobre uma carta no eixo X seta o valor temporario como -1
	}
	if(mouse_y < room_height/2+pilha_count*20/2-20*pilha_count-big_card_height/2 || mouse_y > room_height/2 + pilha_count*20/2-20+big_card_height/2){
		temp = -1;
		// se o mouse nao estiver sobre uma carta no eixo Y seta o valor temporario como -1
	}
}