function scr_mensagem_energy_add(){
	if(!instance_exists(obj_oponente)){
		return;
		}
	
		var posicao = argument0, // posicao de onde a carta vai estar em campo
		cardNum = argument1; // carta que vai estar em campo
		
		with(obj_oponente.fieldCard[posicao]){
		pilha[pilha_count++] = cardNum; // envia os dados da posicao das cartas de energia em campo
		}
}