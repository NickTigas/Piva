function scr_find_oponente(){
	var socket_id = argument0;
	
	// encontrar o oponente
	for(i =0; i<50; i++){
		if(partida_vetor[i, 0] == socket_id){ // percorre o vetor para encontrar o valor igual ao socket
			return partida_vetor[i, 1]; // caso esteja na posicao 0, vai retorna o opnente na posicao 1
		}
		if(partida_vetor[i, 1] == socket_id){ // percorre o vetor para encontrar o valor igual ao socket
			return partida_vetor[i, 0]; // caso esteja na posicao 1, vai retorna o opnente na posicao 0
		}
		
	}
}