#macro MAXHAND 8

card_width = 76;
card_height = 100;

x_pos = 228;
y_pos = 770;

handCount = 0;
for(i = 0; i<8; i++){
	hand[i] = 0;
	handCard[i] = 0;
}

i = 0;

scr_init_sprite_vetor();

// cordenadas de onde o deck de comrpa fica
deck_x = 577;
deck_y = 611;

card_width = 76;
card_height = 100;

// 0 por padrao define q a carta começa pra baixo, quando pra cima o valor eh 1
face_up = 0;
deck_buffer_x = .4
deck_buffer_y = .4

// quantidade de cartas
deckCount = 0;
deckPoint = 0;
for(i=0; i< 20; i++){
	deck[i] = 0
}
// cartas
i = 0;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 4;

deckCount = i;

#macro CARDMAX i


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
	





