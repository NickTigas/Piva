function scr_server_create(){
	var // variavel local
	porta = argument0,
	server = 0;
	
	// funcao do game maker para criar o servidor
	server = network_create_server_raw(network_socket_tcp, porta, 100) // porta que vai ser passada, max de cliente possiveis
	/* conexao do servidor eh definida pelo tipo do TCP pq ele eh mais confiavel no quesito de transferencia de
	dados */
	
	// buffer que vai ser mandado pros client
	
	send_buffer = buffer_create(16384, buffer_fixed, 1); // tamaho do buffer, tipo do buffer, alinhamento
	// buffer fixed n tem o tamanho do buffer alterado
	
	// serve pra condicao do if caso valor seja menor que 0, o servidor n foi possivel ser criado
	return server;
	
}