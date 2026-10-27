function scr_turno_count(){
	var turno_count = 0;
	if(scr_mensagem_turno_change()){
		turno_count++;
	}
	return turno_count;
}