function scr_mensagem_hand_change(){
	//Os Scripts de mensagem não serão executados se o cliente não existir
	// por enquanto obj_oponente = obj_cliente
	if(!instance_exists(obj_oponente)){
		return;
	}
	// informaçoes que serão enviadas = 
	obj_oponente.handCount = obj_player.handCount; // qtd de cartas na mao
	obj_oponente.deckCount = obj_player.deckCount; // qtd de cartas no deck
	
	for(var i =0; i< obj_player.handCount;i++){  // envia as cartas da mao
		obj_oponente.hand[i] = obj_player.hand[i];
	}
	/* toda essa informacao sera colocada em um buffer, e ele sera enviado p/ o servidor e o servidor vai
	mandar pro obj_cliente do oponente onde ele sera desempacotado e exibido */
	return;
}