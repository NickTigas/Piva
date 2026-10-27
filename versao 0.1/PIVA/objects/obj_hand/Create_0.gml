#macro MAXHAND 50

card_width = 76;
card_height = 100;

x_pos = 228;
y_pos = 770;

handCount = 0;
for(i = 0; i<8; i++){
	hand[i] = 0;
}


i = 0;

scr_init_sprite_vetor();
