if(d_counters < 0){
	d_counters = 0;
}

//273 406 x
//405 /443 y
// pega o num da direita, divide pela largura da sala e pega o numero
//ataque 1
move_select_x[0] = 0.4020618556701031*room_width - pilha_count*20/2; //273x_esq / 679 width da room1
move_select_y[0] = 0.4602272727272727*room_height + pilha_count*20/2; //405y_cima / 880 height da room1
move_select_x[1] = 0.5979381443298969*room_width - pilha_count*20/2; //406x_dir / 679 width da room1
move_select_y[1] = 0.5034090909090909*room_height + pilha_count*20/2; //443y_baixo / 880 height da room1
//ataque 2
//273 406 x
//462 /500 y
move_select_x[2] = 0.3564064801178203*room_width - pilha_count*20/2; //273x_esq / 679 width da room1
move_select_y[2] = 0.5409090909090909*room_height + pilha_count*20/2; //462y_cima / 880 height da room1
move_select_x[3] = 0.642120765832106*room_width - pilha_count*20/2; //406x_dir / 679 width da room1
move_select_y[3] = 0.6465909090909091*room_height + pilha_count*20/2; //500_baixo / 880 height da room1

if(alarm[0] == -1){
	if(point_distance(x,y, x_pos, y_pos) > 10 && !selected){
		move_towards_point(x_pos, y_pos, 10);
	}
	else if(point_distance(x,y, x_pos, y_pos) <= 10){
		x = x_pos;
		y = y_pos;
		speed = 0;
	}
	
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
t_count = 0;
c_count = 0;
damage = 0;


var i;
for(i = 0;i < pilha_count; i++){//braco robotico
	if(pilha[i] == 6){
		tokens[token_count++] = 6;
	}

}
if(mouse_check_button_released(mb_left)){
	
	if(player.field[0] == 0 && scr_field_pos() == 0){
		scr_messagem_card_pos_swap(posicao, 0);
		player.field[0] = cardNum;
		player.field[posicao] = 0;
		player.fieldCard[0] = player.fieldCard[posicao];
		player.fieldCard[posicao] = noone;
		posicao = 0;
		x_pos = player.field_x_cord[posicao];
		y_pos = player.field_y_cord[posicao];
	}
	
	if(remove_energy>0){
		if(temp > -1 && scr_is_energy(pilha[temp])){
			scr_mensagem_energy_remove(posicao, temp);
			player.discard[player.discardCount++] = pilha[temp];
			for(i = temp; i<pilha_count-1; i++){
				pilha[i] = pilha[i+1];
			}
			pilha[pilha_count--] = 0;
			remove_energy--;
			if(remove_energy == 0){player.field_select = 0;}
			for(i=0;i<token_count;i++){
				tokens[i] = 0;
			}
		}
	}
	
	if(!player.turno_campo){
		selected = false;
		return;
	}
	/*
	if( temp > -1){
	pilha[temp-1] =4;
	} bug visual da carta de energia */
	if(posicao == 0 && selected){
		if(strings[(cardNum-1)*9+5] != "\0"){// se o academico tiver 2 ataques
			if(mouse_x > move_select_x[0] && mouse_x < move_select_x[1] && mouse_y > move_select_y[0] && mouse_y < move_select_y[1]){
				player.move_select = 1;
				damage = scr_get_damage(cardNum, player.move_select)/10;
				scr_mensagem_manda_damage(damage, 0, player.move_select);
				scr_mensagem_turno_change();
				player.turno_campo = false;
			}
			else if(mouse_x > move_select_x[2] && mouse_x < move_select_x[3] && mouse_y > move_select_y[2] && mouse_y < move_select_y[3]){
				player.move_select = 2;
				damage = scr_get_damage(cardNum, player.move_select)/10;
				scr_mensagem_manda_damage(damage, 0, player.move_select);
				scr_mensagem_turno_change();
				player.turno_campo = false;
			}
		}
		else{
			player.move_select = 1;
			damage = scr_get_damage(cardNum, player.move_select)/10;
			scr_mensagem_manda_damage(damage, 0, player.move_select);
			scr_mensagem_turno_change();
			player.turno_campo = false;
		}
	}
	selected = false;
}