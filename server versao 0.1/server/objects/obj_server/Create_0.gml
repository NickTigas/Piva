#macro MENSAGEM_JOIN 1
#macro MENSAGEM_GET_VALUES 2
#macro MENSAGEM_TURNO 3
#macro MENSAGEM_LEAVE 4

/* Create Event geralmente serve como campo de declaracao de variaveis globais, como para funcionamento base
de algunas features */

// naturnalmente o servidor n vai estar conectado
connected = false; // indica que o servidor foi criado 

/* faz com q o obj server seja forçado a ficar no centro da sala caso seja feito uma representacao grafica
de uma load screem */
x = room_width/2;
y = room_height/2;

// contador de partida
for(i= 0; i<50; i++){
	// vetor sera usado para o servidor direcionar mensagem ao cliente correto
	partida_vetor[i, 0] = -1; // player 1 id socket
	partida_vetor[i, 1] = -1; // player 2 id socket
	partida_vetor[i, 2] = false; // jogo terminado
}
contador_partida = 0; // room counter