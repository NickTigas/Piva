
if(scr_pausa()){return}

if(player.field_select == 95 && posicao == 0){
	depth = - 1000;
	x = mouse_x;
	y = mouse_y;
}

if(player.field[0] == 0 && selected){// mover cartas do banco para campo de batalha
	depth = - 1000;
	x = mouse_x;
	y = mouse_y;
}
