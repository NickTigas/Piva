function scr_mensagem_manda_damage(){
	if(!instance_exists(obj_client)){
		return 
	}
	
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_SEND_DAMAGE); // dps escreve o id de mensagem (send damage)
	buffer_write(obj_client.send_buffer, buffer_u8, argument0); // dano da lapada 
	buffer_write(obj_client.send_buffer, buffer_u8, argument1); // escreve a posicao da carta
	buffer_write(obj_client.send_buffer, buffer_u8, argument2); // escreve a posicao da carta
		
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
	
	if(!instance_exists(obj_player)){
		return 
	}
	
	var damage = argument0,
	posicao = argument1;
	with(obj_oponente){
		with(fieldCard[posicao]){
			d_counters -= damage;
			
		}
	}
	
	return;
}