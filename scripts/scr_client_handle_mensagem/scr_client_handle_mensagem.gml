function scr_client_handle_mensagem(){
	var buffer = argument0;
	
	// passa o socket_id do cliente que mandou a mensagem para encontrar o oponente
	
	/* quando o servidor recebe uma mensagem ele precisa determinar o oponente para enviar a mensagem correta
	ao cliente */
	
	/* combina varias mensagens em um unico buffer quando varias mensagemns sao enviadas ao mesmo tempo por
	um cliente */
	while(true){
		// primeira coisa lida do buffer sempre deve ser o id de mensagem
		var mensagem_id = buffer_read(buffer, buffer_u8), // u8 tamanho de dados que sera lido do buffer [
		// tamanho 8
		client = buffer_read(buffer, buffer_u16),
		
		oponenteObj = scr_oponente_get_object(client);
		
		switch(mensagem_id){
			case MENSAGEM_JOIN:
			/* não possui code pq oq acontece com essa mensagem eh que o cliente envia essa mensagem para o
			server, e em seguida o server enviara ao oponente a mesma mensagem */
			break;
			
			case MENSAGEM_HAND_CHANGE:
				var i;
				with(oponenteObj){
				// com o objeto oponente altera o handCount do obj oponente para os proxs 8bits do buffer
				handCount = buffer_read(buffer, buffer_u8);
				
				//dps altera o deckCount do obj oponente para os proxs 8bits do buffer
				deckCount = buffer_read(buffer, buffer_u8);
					for(i = 0; i<handCount; i++){
						// define a mão do oponente para os prox 32bits do buffer p/ cada handCount
						hand[i]= buffer_read(buffer, buffer_u32);
					}
					// as prox posicoes da mao possiveis setadas para 0
					for(i = handCount;i< 20; i++){
						hand[i]= 0;
					}
				}
			
			break;
		}
		
		
		// buffer tell eh a posicao do buffer para ler
		if(buffer_tell(buffer) == buffer_get_size(buffer)){//ve se todas as mensagens foram lidas e combinadas
			break;
		}
	}
	
	

}