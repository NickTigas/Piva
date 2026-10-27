function scr_mensagem_manda_damage(){
	if(!instance_exists(obj_player)){
		return //mudar pra obj_client
	}
	var damage = argument0,
	posicao = argument1;
	with(obj_oponente){
		with(fieldCard[posicao]){
			d_counters -= damage;
			
		}
	}
	return;
}