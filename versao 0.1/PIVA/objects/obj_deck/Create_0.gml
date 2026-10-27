// cordenadas de onde o deck de comrpa fica
deck_x = 577;
deck_y = 611;

card_widht = 76;
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
i = 0;
deck[i++] = 1;
deck[i++] = 2;
deck[i++] = 3;
deck[i++] = 4;

deckCount = i;

#macro CARDMAX i

scr_init_sprite_vetor();

i = 0;