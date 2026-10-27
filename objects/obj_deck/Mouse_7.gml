if(!player.turno_draw){
	return;
}
/*if(scr_pausa()){
	return;
}*/
if(player.field_select > 0){
	return;
}
if(player.turno_discard > 0){
	return;
}

if(player.win || player.lose){// impede de realizar ação caso o jogo tenha acabado
	return 1;
}

with(player){
	src_draw(1);
	turno_draw = false;
	turno_campo = true;
}