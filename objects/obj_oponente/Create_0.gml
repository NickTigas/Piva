scr_init_sprite_vetor();
scr_init_big_sprite_vetor();
scr_init_vetores();

handCount = 0;
deckCount = 0;
deck_buffer_x = obj_player.deck_buffer_x;
deck_buffer_y = obj_player.deck_buffer_y;
deck_x = 103;
deck_y = 257;

for(i = 0; i< 4;i++){
	//6 posicoes
	field[i] = 0;
	// comeca em 0 pq n tem nenhum card nessa posicao
	// alocar memoria para o campo
	fieldCard[i] = noone;
}

for(i=0;i<20;i++){
	hand[i] = 0;
	// comeca em 0 pq n tem nenhum card nessa posicao
	// alocar memoria para o campo
	handCard[i] = noone;
}

//attack //205 438
field_x_cord[0] = 433;
field_y_cord[0] = 429;
//campo 1 259 780
field_x_cord[1] = 420;
field_y_cord[1] = 160;
//campo 2 340 780
field_x_cord[2] = 340;
field_y_cord[2] = 160;
//campo 3 419 780
field_x_cord[3] = 260;
field_y_cord[3] = 160;

// pilha da DP
for(i=0; i <60;i++){
	discard[i] = 0;
}
discardCount = 0;
discard_x = deck_x;
discard_y = deck_y+card_height-33;
//68 322

//condicoes de vitoria
win = false;
lose = false;

pontos_count = 3;//normalmente 3

card_view = false;

life_cord_x = 515;
life_cord_y = 158;