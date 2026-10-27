function scr_mensagem_field_set(){
	//Os Scripts de mensagem não serão executados se o cliente não existir
	// por enquanto obj_oponente = obj_cliente
	if(!instance_exists(obj_oponente)){
		return;
		}
		var posicao = argument0, // posicao de onde a carta vai estar em campo
		cardNum = argument1; // carta que vai estar em campo
		
		obj_oponente.field[posicao] = cardNum; // envia os dados da posicao da carta em campo
		
		return;
}