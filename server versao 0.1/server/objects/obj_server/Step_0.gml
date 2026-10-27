for(i = 0; i<50; i++){ // percorre todas as partidas
	// verifica se os player não estão nas salas
	if(partida_vetor[i, 0] ==-1 && partida_vetor[i, 1] ==-1 && partida_vetor[i, 2] == true){
		partida_vetor[i, 2] = false; // seta a partida como nao conectada
	}
}

// conta quantas partidas estao online/instanciadas
contador_partida = 0;
for(i =0;i<50;i++){
	if(partida_vetor[i, 0] != -1 || partida_vetor[i, 1] != -1){
		contador_partida++;
	}
}

