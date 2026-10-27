/* Draw Event geralmente serve como meio de carregar imagens para uma sala através de um objetos*/

if(!connected){// forca a imagem estar estatica se o servidor nao estiver conectado (possivel animacao loadscreem)
	image_index = 0;
}

// "desenha" ela mesma, usado pra imagem aparecer na tela
draw_self();

// escrever as salas(ponto q os dois player serao conectados) q foram criadas no contador de partidas
draw_set_colour(c_blue);
for(i=0; i<50; i++){
	if(partida_vetor[i, 0] > -1 || partida_vetor[i, 1] > -1 || partida_vetor[i,2]){
		draw_text(5,5+i*10, string(partida_vetor[i,0]) +" "+ string(partida_vetor[i,1]) + " "+ string(partida_vetor[i,2]));
	}
}
// numero de salas (sera "desenhado" no centro da sala)
draw_text(room_width/2, 5, string(contador_partida));