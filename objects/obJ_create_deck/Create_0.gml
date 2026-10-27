deckCount = 0;
selected = false;

scr_init_vetores();
scr_init_sprite_vetor();
scr_init_big_sprite_vetor();

for(i=0;i<20;i++){
	deck[i] = 0;
}
yview = 700;
// usada pra printar o deck que for criado