function src_draw(){
// condicao pra comprar carta
var num = argument0;

// condicao p/ n comprar carta
if(deckCount - num <0){
return;
}

for(i = 0; i<num;i++){
	deckCount --;
	hand[handCount] = deck[deckCount];
	handCount++;
	deck[deckCount] = 0;
	
	handCard[handCount - 1] = instance_create_depth(deck_x, deck_y, -handCount - 2, obj_card);
	//evita n ser capaz de pegar a primeira carta
	// handCount - 2, cd carta vai ter profundidade menor q a anterior
	with(handCard[handCount - 1]){
		card_drawn = true;
		hand_posicao = player.handCount - 1;
		cardNum = player.hand[hand_posicao];
	}
}
	scr_mensagem_hand_change(); // pega os dados da compra de carta
	return;
}