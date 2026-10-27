if(!instance_exists(obj_oponente)){ // se não existir obj_oponente
	return 1;
}
if(keyboard_check_released(vk_enter)){
	pontos_count--;
}

if(start_game_turno == true)
{
	if(alarm[0] == -1){
	// se o alaram n tiver trabalhand (vagabundo) vai ser igual a 1
	alarm[0] = 1;
	// serve pra n ter que esperar 1 frame pra comprar carta (demora mt slk)
	}
}
if(mulligan_turno == true){
	if(alarm[2] = -1){
		alarm[2]= 90;
	}
}

// condicao de vitoria
if(alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1){
	if(pontos_count <= 0){
		lose = true;
		scr_mensagem_manda_reseults(0);
	}
	else if(obj_oponente <=0){
		win = true;
	}
}