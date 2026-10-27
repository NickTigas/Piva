function scr_mensagem_turno_change(){
	
	if(player.win || player.lose){// impede de realizar ação caso o jogo tenha acabado
	return 1;
	}
	
	var temp = 0;
	for(var i = 0; i <4;i++){
		if(player.field[i] > 0){
			temp++;
		}
	}
	if(player.turno > 2 && temp == 0){
		player.lose = true;
		scr_mensagem_manda_reseults(0);
	}
	
	if(player.field[0] == 0 && temp > 0){
		return;
	}
	
	//obriga a colocar carta na posicao 0
	if(player.turno <=2 && player.field[0] == 0){
		return;
	}
	
	player.turno_draw = false;
	player.turno_campo = false;
	
	player.turno+= 2;
	
	with(obj_oponente){
		scr_reset_switches();
	}
	
	if(!instance_exists(obj_client)){
		return;
	}
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_TURNO_CHANGE); // manda o id de mensagem
				
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
}