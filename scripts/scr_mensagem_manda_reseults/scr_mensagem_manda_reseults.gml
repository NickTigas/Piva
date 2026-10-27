function scr_mensagem_manda_reseults(){
	//1 win
	//0 lose
	
	if(!instance_exists(obj_client)){
		return;
	}
	
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_SEND_RESULTADO); // escrito em Mensagem card show
	buffer_write(obj_client.send_buffer, buffer_u8, argument0); // carta que quer mostrar para o oponente
				
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
}