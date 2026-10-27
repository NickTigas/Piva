if(scr_pausa()){
	return;
}

if(player.turno_campo && !player.turno_draw){
	scr_mensagem_turno_change();
}