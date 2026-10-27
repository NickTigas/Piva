function scr_client_connect(){
	var
	ip = argument0,
	porta = argument1;
	
	
	// funcao socket do gamemaker onde se passa tcp pq a rede é tcp
	socket = network_create_socket(network_socket_tcp);
	
	// quantidade de tempo que o client demora pra se conectar com o server
	network_set_config(network_config_connect_timeout, 10*1000); // tempo de espera eh 10x a velocidade da sala
	//room_speed
	
	var connect = network_connect_raw(socket, ip, porta);
	//conecta o cliet ao server pelo socket, ip da maquina e a porta, se falhar retorna valor menor que zero
	
	// buffer mandado ao server
	//esqueci o send pqp
	send_buffer = buffer_create(16384, buffer_fixed, 1) // tamaho do buffer, tipo do buffer, alinhamento
	// buffer fixed n tem o tamanho do buffer alterado
	//buffers não podem exceder o valor de 16384, se n da problema 
	
	//mapa DS que armazena as variaves do objeto oponente
	clientmap = ds_map_create();
	
	/* se o cliente conectou adequadamente devera enviar uma mensagem ao server informando que o client quer entrar
	numa partida */
	
	if(connect >= 0){
		// busca o começo do buffer
		buffer_seek(send_buffer, buffer_seek_start, 0);
		
		// em seguida escreve nesee buffer a mensagem_join
		buffer_write(send_buffer, buffer_u8, MENSAGEM_JOIN);
		
		// enviara o buffer para o server atraves da funcao send_raw do game maker
		network_send_raw(socket, send_buffer, buffer_tell(send_buffer));
		// usa socket do client, buffer, tamanho do buffer (buffer tell determina o tamanho do buffer)
	}
	else{ // caso nao foi possivel conectar
		if(alarm[0] == -1){
			alarm[0] = 20;
			// imprimi uma mensagem para sala
		}
	}
	
	return connect;
}