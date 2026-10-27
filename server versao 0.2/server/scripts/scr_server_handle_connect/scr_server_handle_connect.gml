function scr_server_handle_connect(){
	var socket_id = argument0;
	
	if(contador_partida == 50){
		return; // caso chegue a capacidade maxima
		// num max de host 100, cada partida tem 2 client, max de partida 50
	}
	
	// se n estiver capacidade max, sera adicionado ao cliente uma partida usando script scr_set_partida
	scr_set_partida(socket_id);
	// usado para encontrar o oponente atraves do id socket
	
}