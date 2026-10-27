randomize();

x_pos = 228;
y_pos = 770;

x_msg = 600;
y_msg = 25;

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

//scr_deck_all_cards();
src_deck1_init();
//scr_deck_init();
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
show_debug_message("Mensagem: " + string(field_x_cord[0],field_y_cord[0]));
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

// turnos do jogo
start_game_turno = true;
mulligan_turno = false;
turno_draw = false;
turno_campo = false;
turno_discard = 0;
field_select = 0;
deck_card_select = 0;
academico_set = false;
energy_set = false;
scr_init_vetores();

// pilha da DP
for(i=0; i <60;i++){
	discard[i] = 0;
}
discardCount = 0;
discard_x = deck_x;
discard_y = deck_y-card_height-10;

instance_create_layer(discard_x,discard_y,"Instances",obj_discard);

discard_x = deck_x;
discard_y = deck_y-card_height-10;
discard_x_2 = discard_x;

//instance_create_layer(0,0,"Instances",obj_oponente); // remove quando o codiguim do cliente estiver feito

turno = 0;
pausa = false;

//condicoes de vitoria
win = false;
lose = false;

player = self;

life_cord_x = 65;
life_cord_y = 700;

pontos_count = 3;//normalmente 3



// botao pra passar o turno
instance_create_depth(field_x_cord[3], field_y_cord[3] -card_height*1.2, - 1, obj_end_turno);