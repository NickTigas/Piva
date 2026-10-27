function scr_pausa(){
	if(player.alarm[0] > -1){return;}
	if(player.alarm[1] > -1){return;}
	if(player.alarm[2] > -1){return;}
	if(player.alarm[3] > -1){return;}
	if(player.alarm[4] > -1){return;}
	if(player.alarm[5] > -1){return;}
	
	if(player.deck_card_select >0){return 1;}
	if(player.turno_draw){return 1;} // impede de realizar ação no turno de compra
	if(player.pausa){return 1;}
	if(obj_oponente.field[0] == 0 && player.turno > 3){return 1;}
	if(player.win || player.lose){ return 1;} // impede de realizar ação caso o jogo tenha acabado

}