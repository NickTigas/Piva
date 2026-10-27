token_count = 0;

var i;
for(i = 0;i < pilha_count; i++){//braco robotico
	if(pilha[i] == 6){
		tokens[token_count++] = 6;
	}

}
if(mouse_check_button_released(mb_left)){
	if( temp > -1){
	pilha[temp-1] =4;
	}
	selected = false;
}