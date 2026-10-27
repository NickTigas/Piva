function scr_set_partida(){
	var socket_id = argument0;
	
	//loops para encontrar um oponente
	
	// procura em todas as salas se houver uma sala com um p1 preenche a outra posição com o p2
	for(i = 0; i<100; i++){
		// valor de partida terminada so fica completamente true se os dois players sairem da sala
		if(partida_vetor[i, 0] != -1 && partida_vetor[i, 1] == -1 &&  partida_vetor[i, 2] == false){
			partida_vetor[i, 1] = socket_id;
		}
	}
	
	//define o client como p1 em uma nova sala
	for(i=0; i<50; i++){
		if(partida_vetor[i, 0] == -1 && partida_vetor[i, 2] == false){
			partida_vetor[i, 0] = socket_id;
			return;
		}
	}
}