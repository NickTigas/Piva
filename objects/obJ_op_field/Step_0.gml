if(d_counters < 0){
	d_counters = 0;
}

var i,
cardNum;
cardNum = self.cardNum;
health_points = scr_get_hp(cardNum);

if(health_points <= 0 || d_counters <=0){
	player.field[posicao] = 0;
	if(player.field[posicao] != 0){
		for(i=pilha_count-1; i>=0; i--){
			scr_dp_field_card(i);
		}
	}
	//instance_destroy();
	scr_mensagem_field_set(posicao,0);
	player.field[posicao] = 0;
	player.fieldCard[posicao] = 0;
	if(alarm[0] == -1){
		alarm[0] = 3;
	}
	depth = -400;
}

token_count = 0;

var i;
for(i = 0;i < pilha_count; i++){//braco robotico
	if(pilha[i] == 6){
		tokens[token_count++] = 6;
	}

}
if(mouse_check_button_released(mb_left)){
	/*
	if( temp > -1){
	pilha[temp-1] =4;
	} 
	bug visual da carta de energia */
	selected = false;
}