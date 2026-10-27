/*  Async - Networking Adicionar a comunicaçao ao servidor */
show_debug_message("ASYNC ATIVADO");
show_debug_message("TIPO: " + string(async_load[?"type"]));
// async_load eh uma variavel global
/* quando a mensagem for enviada ao servidor async_load tera o valor na posiçao type sera um entre esses:*/
switch(async_load[?"type"]){
	case network_type_connect:
	case network_type_non_blocking_connect:
	// ambos sao usados pra conectar o server, ent sao "tratados" iguais
	/* quando um cliente tenta se conectar ao server o valor assíncrono sera network type connect */

	scr_server_handle_connect(async_load[?"socket"]); // socket = endereço do client em relaçao ao servidor
	// faz a conexao com o servidor
	
	break;
	case network_type_data:
	// sempre que o cliente envia uma mensagem pro servidor
	scr_server_handle_mensagem(async_load[?"id"], async_load[?"buffer"]);
	//id do socket do cliente e buffer q sera enviado ao servidor
	
	show_debug_message("RECEBEU DADO");
	
	break;
	case network_type_disconnect:
	
	scr_server_handle_disconnect(async_load[?"socket"]);
	break;
	
}