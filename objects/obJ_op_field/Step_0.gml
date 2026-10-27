show_debug_message("oponenteObj = " + string(oponenteObj));

if (!instance_exists(oponenteObj))
{
    show_debug_message("oponenteObj nao existe");
    exit;
}


if(d_counters < 0){
	d_counters = 0;
}

var i;

var cardNum = self.cardNum;
health_points = scr_get_hp(cardNum);

if((health_points <= 0 || d_counters <= 0) && !ja_morreu)
{
    ja_morreu = true;

    if(posicao == 0)
    {
		
        player.pontos_count -= 1;
		scr_mensagem_remove_vida(1);

        if(player.pontos_count <= 0)
        {
            player.pontos_count = 0;

            player.lose = true;
            scr_mensagem_manda_reseults(false);
        }
    }

    for(var i = pilha_count-1; i >= 0; i--)
    {
        scr_dp_field_card(i);
    }

    scr_mensagem_field_set(posicao,0);

    player.field[posicao] = 0;
    player.fieldCard[posicao] = noone;

    alarm[0] = 3;
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