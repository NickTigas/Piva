function scr_find_turno(){
	var socket_id = argument0;
	
	// encontrar o turno
	for(i =0; i<50; i++){
		if(partida_vetor[i, 0] == socket_id){ // percorre o vetor para encontrar o valor igual ao socket
			return  1; // retorna qual player eh, o equivale a qual turno eh de quem
		}
		if(partida_vetor[i, 1] == socket_id){ // percorre o vetor para encontrar o valor igual ao socket
			return 2; // retorna qual player eh, o equivale a qual turno eh de quem
		}
	}
}