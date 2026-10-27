function scr_mensagem_field_set(){
	//Os Scripts de mensagem não serão executados se o cliente não existir

	if(!instance_exists(obj_client)){
		return;
		}
		
		buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
		buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_FIELD_SET); // dps escreve o id de mensagem (field set)
		buffer_write(obj_client.send_buffer, buffer_u8, argument0); // posicao da carta em campo
		buffer_write(obj_client.send_buffer, buffer_u32, argument1); // numero da carta
		// agrument0 e 1 serao enviados para o servidor
		
		/* Adiciona o codigo para calcular quando se recebe a mensagem pra ter certeza que vai
		ser utilizado as variaveis */
	
		network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
		
		/*
		var posicao = argument0, // posicao de onde a carta vai estar em campo
		cardNum = argument1; // carta que vai estar em campo
		
		obj_oponente.field[posicao] = cardNum; // envia os dados da posicao da carta em campo
		*/
		return;
}