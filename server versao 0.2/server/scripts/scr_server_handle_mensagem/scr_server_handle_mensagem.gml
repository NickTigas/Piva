function scr_server_handle_mensagem(){
	
	show_debug_message("HANDLE MENSAGEM");
	
	var socket_id = argument0,
	buffer = argument1;
	
	var temp2 = scr_find_oponente(socket_id);
	var turno = scr_find_turno(socket_id);
	// passa o socket_id do cliente que mandou a mensagem para encontrar o oponente
	
	/* quando o servidor recebe uma mensagem ele precisa determinar o oponente para enviar a mensagem correta
	ao cliente */
	
	/* combina varias mensagens em um unico buffer quando varias mensagemns sao enviadas ao mesmo tempo por
	um cliente */
	while(true){
		var mensagem_id = buffer_read(buffer, buffer_u8); // u8 tamanho da mensagem
		
		switch(mensagem_id){ // principal responsavel por conectar server entre dois sockets diferentes
			
			// o servidor manda 2 mensagens - 1 pro client que enviou a mensagem e outra pro oponente
			// o client manda uma mensagem informando o valor da sua entrada
			case MENSAGEM_JOIN:
			
			buffer_seek(send_buffer, buffer_seek_start, 0);
			buffer_write(send_buffer, buffer_u8, mensagem_id);
			buffer_write(send_buffer, buffer_u16, socket_id);
				
			// envia a mensagem_id enviada pelo client
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			//envia o socket do oponente
				
			buffer_seek(send_buffer, buffer_seek_start, 0);
			buffer_write(send_buffer, buffer_u8, MENSAGEM_TURNO);
			buffer_write(send_buffer, buffer_u16, socket_id);
			buffer_write(send_buffer, buffer_u8, turno);
				
			network_send_raw(socket_id, send_buffer, buffer_tell(send_buffer));

			break;
			
			case MENSAGEM_HAND_CHANGE:
			
			var handCount = buffer_read(buffer, buffer_u8), // pega os primeiros 8 bits
				deckCount = buffer_read(buffer, buffer_u8); // prox 8 bits	
				
			buffer_seek(send_buffer, buffer_seek_start, 0); // busca o inicio do buffer
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, handCount); // manda qtd de cartas na mao
			buffer_write(send_buffer, buffer_u8, deckCount); // manda qtd de cartas no deck
				
			for(i = 0; i<handCount; i++){ // le os prox 32 bits do buffer para cada posicao da mao que foi enviada
				buffer_write(send_buffer, buffer_u32, buffer_read(buffer, buffer_u32));	
			}
				
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			//envia o socket para o oponente
				
			break;
			
			case MENSAGEM_FIELD_SET:
			case MENSAGEM_ENERGY_ADD:
			case MENSAGEM_ITEM_ADD:
			
			buffer_seek(send_buffer, buffer_seek_start, 0); // busca o inicio do buffer
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // escreve a posicao da carta
			buffer_write(send_buffer, buffer_u32,buffer_read(buffer, buffer_u32)); // escreve o numero da carta
				
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_DISCARD:
			case MENSAGEM_CARD_SHOW:
			
			buffer_seek(send_buffer, buffer_seek_start, 0); // busca o inicio do buffer
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u32,buffer_read(buffer, buffer_u32)); // escreve o numero da carta
				
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_SEND_RESULTADO:
			case MENSAGEM_VIDA_REMOVE:
			
			buffer_seek(send_buffer, buffer_seek_start, 0); // busca o inicio do buffer
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8));
			
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_TURNO_CHANGE:
			
			buffer_seek(send_buffer, buffer_seek_start, 0);
			buffer_write(send_buffer, buffer_u8, mensagem_id);
			buffer_write(send_buffer, buffer_u16, socket_id);
				
			// envia a mensagem_id enviada pelo client
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_ENERGY_REMOVE:
			
			buffer_seek(send_buffer, buffer_seek_start, 0);
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); 
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8));
			
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_SEND_DAMAGE:
			
			buffer_seek(send_buffer, buffer_seek_start, 0); // busca o inicio do buffer
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // dano da lapada 
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // escreve a posicao da carta
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // escreve a posicao da carta
			
			network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
			
			break;
			
			case MENSAGEM_CARD_POS_TROCA:
			
			buffer_write(send_buffer, buffer_u8, mensagem_id); // escreve o mesagem id
			buffer_write(send_buffer, buffer_u16, socket_id); // escreve o socket id do client que mandou
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // origem
			buffer_write(send_buffer, buffer_u8, buffer_read(buffer, buffer_u8)); // destino
			buffer_write(send_buffer, buffer_u32, buffer_read(buffer, buffer_u32)); // carta
			
			break;
			
		}
		
		// buffer tell eh a posicao do buffer para ler
		if(buffer_tell(buffer) == buffer_get_size(buffer)){//ve se todas as mensagens foram lidas e combinadas
			break;
		}
	}
	
	show_debug_message("Enviando de: " + string(socket_id) + " para: " + string(temp2));
	
}