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
//273 406 x
//405 /443 y
// pega o num da direita, divide pela largura da sala e pega o numero
//ataque 1
move_select_x[0] = 0.4020618556701031*room_width; //273x_esq / 679 width da room1
move_select_y[0] = 0.4602272727272727*room_height; //405y_cima / 880 height da room1
move_select_x[1] = 0.5979381443298969*room_width; //406x_dir / 679 width da room1
move_select_y[1] = 0.5034090909090909*room_height; //443y_baixo / 880 height da room1
//ataque 2
//242 435 x 
//476 565 y
move_select_x[2] = 0.3564064801178203*room_width; //242x_esq / 679 width da room1
move_select_y[2] = 0.5409090909090909*room_height; //476y_cima / 880 height da room1
move_select_x[3] = 0.642120765832106*room_width; //436x_dir / 679 width da room1
move_select_y[3] = 0.6465909090909091*room_height; //569_baixo / 880 height da room1

//242 476
//435 565

d_counters = 0;
move_select = 0;
damage = 0;
cardNum = 0;
health_points = 0;
remove_energy = 0;
temp = -1;
ja_morreu = false; //mt problema pra arrumar o calculo de dano

life_cord_x = 65;
life_cord_y = 700;