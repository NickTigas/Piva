x_pos = 228;
y_pos = 770;

handCount = 0;
for(i = 0; i<8; i++){
	hand[i] = 0;
	handCard[i] = 0;
}

i = 0;

scr_init_sprite_vetor();
scr_init_big_sprite_vetor();

// cordenadas de onde o deck de comrpa fica
deck_x = 577;
deck_y = 611;

// 0 por padrao define q a carta começa pra baixo, quando pra cima o valor eh 1
face_up = 0;
// define o tamanho da pilha do deck
deck_buffer_x = .2
deck_buffer_y = .2

// quantidade de cartas
deckCount = 0;
deckPoint = 0;

scr_deck_all_cards();
src_deck1_init();
scr_embaralhar_deck();

i = 0;

//campo / field
for(i = 0; i< 4;i++){
	//6 posicoes
	field[i] = 0;
	// comeca em 0 pq n tem nenhum card nessa posicao
	// alocar memoria para o campo
	fieldCard[i] = noone;
}
//atack //205 438
field_x_cord[0] = 207;
field_y_cord[0] = 435;
//campo 1 259 780
field_x_cord[1] = 260;
field_y_cord[1] = 707;
//campo 2 340 780
field_x_cord[2] = 340;
field_y_cord[2] = 707;
//campo 3 419 780
field_x_cord[3] = 420;
field_y_cord[3] = 707;
	
// deck expend
xview = 0;
yview = deck_y;
deck_x_2 = deck_x;


// pilha da DP
for(i=0; i <60;i++){
	discard[i] = 0;
}
discardCount = 0;
discard_x = deck_x;
discard_y = deck_y-card_height-10;

instance_create_layer(discard_x,discard_y,"Instances",obj_discard);
