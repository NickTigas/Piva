function scr_server_handle_mensagem(){
	var socket_id = argument0,
	buffer = argument1,
	temp2 = scr_find_oponente(socket_id);
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
				buffer_write(send_buffer, buffer_u8, MENSAGEM_GET_VALUES);
				for(i=0; i< 50; i++){
					if(partida_vetor[i, 0] == socket_id){
						buffer_write(send_buffer, buffer_u8, 1);
						buffer_write(send_buffer, buffer_bool, true);
					}
					else if(partida_vetor[i, 1] == socket_id){
						buffer_write(send_buffer, buffer_u8, 0);
						buffer_write(send_buffer, buffer_bool, false);
					}
				}
				
				network_send_raw(socket_id, send_buffer, buffer_tell(send_buffer));
				/* envia a mensagem p/ o socket_id para o socket_id do cliente q mandou a mensagem, dps manda
				o buffer falando o tamanho desse buffer
				*/
				
				buffer_seek(send_buffer, buffer_seek_start, 0);
				buffer_write(send_buffer, buffer_u8, mensagem_id);
				// envia a mensagem_id enviada pelo client
				network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
				//envia o socket do oponente
				
			break;
			
			case MENSAGEM_TURNO:
			
				buffer_seek(send_buffer, buffer_seek_start, 0);
				buffer_write(send_buffer, buffer_u8, mensagem_id);
				for(i = 0; i<3; i++){
					for(j = 0; j<3; i++){
						buffer_write(send_buffer, buffer_s8, buffer_read(buffer, buffer_s8));
					}
				}
			
				network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
				//envia o socket do oponente, mms coisa do de cima
				
			break;
		}
		
		// buffer tell eh a posicao do buffer para ler
		if(buffer_tell(buffer) == buffer_get_size(buffer)){//ve se todas as mensagens foram lidas e combinadas
			break;
		}
	}
}