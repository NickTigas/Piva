function scr_mensagem_hand_change(){
	//Os Scripts de mensagem não serão executados se o cliente não existir
	if(!instance_exists(obj_client)){
		return;
	}
	
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_HAND_CHANGE); // dps escreve o id de mensagem (hand change)
	buffer_write(obj_client.send_buffer, buffer_u8, obj_player.handCount);
	buffer_write(obj_client.send_buffer, buffer_u8, obj_player.deckCount);
	/* buffer_u8 = eh um inteiro sem sinal de 8 bits, tem valor positivo entre 0 à 255, menor entre os buffers, por isso
	que estamos usando, alem de econimizar processamento os valores de hand change, handCount e deckCount nunca vão 
	passar de 255 */
	var i;
	for(i = 0; i < obj_player.handCount; i++){
		// escreve todos os numeros das cartas e a mão do jogador no buffer
		buffer_write(obj_client.send_buffer, buffer_u32, obj_player.hand[i]);// manda esse buffer pro server socket, buffer e tamanho do buffer
		// buffer_u32 = eh um inteiro sem sinal de 32 bits, tem valor positivo entre 0 à 4.29M  
		
	}
	
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
	// manda o buffer p/ o server
	
	
	// informaçoes que serão enviadas = 
	/* obj_oponente.handCount = obj_player.handCount; // qtd de cartas na mao
	obj_oponente.deckCount = obj_player.deckCount; // qtd de cartas no deck
	
	for(var i =0; i< obj_player.handCount;i++){  // envia as cartas da mao
		obj_oponente.hand[i] = obj_player.hand[i];
	}*/
	/* toda essa informacao sera colocada em um buffer, e ele sera enviado p/ o servidor e o servidor vai
	mandar pro obj_cliente do oponente onde ele sera desempacotado e exibido */
	return;
}