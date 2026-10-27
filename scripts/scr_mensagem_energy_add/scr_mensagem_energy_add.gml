function scr_mensagem_energy_add(){
	if(!instance_exists(obj_client)){
		return;
		}
		
		buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
		buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_ENERGY_ADD); // dps escreve o id de mensagem (energy add)
		buffer_write(obj_client.send_buffer, buffer_u8, argument0); // posicao da carta em campo
		buffer_write(obj_client.send_buffer, buffer_u32, argument1); // numero da carta
		
		network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
		/*
		var posicao = argument0, // posicao de onde a carta vai estar em campo
		cardNum = argument1; // carta que vai estar em campo
		
		with(obj_oponente.fieldCard[posicao]){
		pilha[pilha_count++] = cardNum; // envia os dados da posicao das cartas de energia em campo
		}
		*/
}