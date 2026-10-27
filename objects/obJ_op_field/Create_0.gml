selected = false;
scr_init_vetores();
scr_init_sprite_vetor();
scr_init_big_sprite_vetor();

var i;
for(i=0; i<60; i++){
	tokens[i] =0;
}
token_count = 0;

for(i=0; i<60; i++){
	pilha[i] = 0;
}
pilha_count = 0;

temp = -1;

d_counters = 0;
cardNum = 0;
health_points = 0;
oponente = noone;
oponenteObj = noone;
ja_morreu = false;
//player = obj_oponente;

life_cord_x = 515;
life_cord_y = 158;