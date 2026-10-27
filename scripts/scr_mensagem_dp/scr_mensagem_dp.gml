function scr_mensagem_dp(){
	if(!instance_exists(obj_client)){
		return;
	}
	
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_DISCARD); // dps escreve o id de mensagem (discard)
	buffer_write(obj_client.send_buffer, buffer_u32, argument0); // numero da carta
	
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
	/*
	var cardNum = argument0 // carta que vai estar em campo
		
	with(obj_oponente){
		discard[discardCount++] = cardNum; // envia os dados da posicao das cartas de energia em campo
	}
	*/
}