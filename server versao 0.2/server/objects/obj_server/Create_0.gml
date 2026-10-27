#macro MENSAGEM_JOIN 1
#macro MENSAGEM_HAND_CHANGE 2
#macro MENSAGEM_FIELD_SET 3
#macro MENSAGEM_GET_VALUES 3
#macro MENSAGEM_ENERGY_ADD 4
#macro MENSAGEM_DISCARD 5
#macro MENSAGEM_SEND_DAMAGE 6
#macro MENSAGEM_CARD_POS_TROCA 7
#macro MENSAGEM_LEAVE 8
#macro MENSAGEM_ITEM_ADD 9
#macro MENSAGEM_TURNO 10
#macro MENSAGEM_CARD_SHOW 11
#macro MENSAGEM_TURNO_CHANGE 12
#macro MENSAGEM_ENERGY_REMOVE 13
#macro MENSAGEM_SEND_RESULTADO 14
#macro MENSAGEM_VIDA_REMOVE 15

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