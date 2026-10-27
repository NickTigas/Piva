function scr_mensagem_card_show(){
	
	if(!instance_exists(obj_client)){
		return;
	}
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0);
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_CARD_SHOW); // escrito em Mensagem card show
	buffer_write(obj_client.send_buffer, buffer_u32, argument0); // carta que quer mostrar para o oponente
				
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
}