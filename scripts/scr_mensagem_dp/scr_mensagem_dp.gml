function scr_mensagem_dp(){
	if(!instance_exists(obj_oponente)){
		return;
	}
	
	var cardNum = argument0 // carta que vai estar em campo
		
	with(obj_oponente){
		discard[discardCount++] = cardNum; // envia os dados da posicao das cartas de energia em campo
	}
}