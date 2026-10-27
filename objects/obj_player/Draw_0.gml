//draw_rectangle(room_width/2-205,room_height/2-205,room_width/2+205,room_height/2+205,true);
// area retangular onde vai ser possivel usar itens

if(!instance_exists(obj_oponente)){
	draw_set_colour(c_aqua);
	draw_text(room_width, room_height/2, " Aguardando Oponente... SLK CLIENT FALIU KKKK");
}

//condicoes de vitoria
else if(win && obj_oponente.win){ // condicao de empate
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(room_width/2, room_height/2, "EMPATE");
}

else if(win){ // condicao de vitoria
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(room_width/2, room_height/2, "VOCE VENCEU! YIEP");
}

else if(lose){ // condicao de vitoria
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(room_width/2, room_height/2, "VOCE PERDEU, SEU BETINHA -1000 AURA DESISTA DOS SEUS SONHOS E MORRA");
}

else if(turno_draw){ // fase de compra
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(x_msg, y_msg, "TURNO DE COMPRA");
}

else if(turno_campo){ // fase de campo
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(x_msg, y_msg, "TURNO DE CAMPO");
}

else { // turno do oponente
	draw_set_halign(fa_center)
	draw_set_colour(c_aqua);
	draw_text(x_msg, y_msg, "TURNO DO OPONENTE");
}

