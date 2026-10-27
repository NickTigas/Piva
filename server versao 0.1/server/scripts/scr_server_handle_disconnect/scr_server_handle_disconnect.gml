function scr_server_handle_disconnect(){
	var socket_id = argument0;
	
	//encontrar o oponente cliente e ajustar o vetor de partida
	
	for(i=0;i<50;i++){
		if(partida_vetor[i, 0] == socket_id){
			partida_vetor[i, 0] = -1;
			partida_vetor[i, 2] = true;
			// quando um jogador desconecta e o jogo termina, n se adiciona outro cliente a sala
		}
		else if((partida_vetor[i, 1] == socket_id)){
			partida_vetor[i, 1] = -1;
			partida_vetor[i, 2] = true; // valor booleano q impede a entrada de outro player na sala msm coisa do outro
		}
	}
	
	var temp2 = scr_find_oponente(socket_id);
	
	buffer_seek(send_buffer, buffer_seek_start, 0);
	buffer_write(send_buffer, buffer_u8, MENSAGEM_LEAVE);
	network_send_raw(temp2, send_buffer, buffer_tell(send_buffer));
	
}