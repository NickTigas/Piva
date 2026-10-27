for(i=0;i<player.pontos_count;i++){
	draw_sprite(spr_lifepoint,0,life_cord_x+(i*50),life_cord_y);
	//draw_text(life_cord_x,life_cord_y,string(player.pontos_count));
}

//draw_rectangle(room_width/2-205,room_height/2-205,room_width/2+205,room_height/2+205,true);
// area retangular onde vai ser possivel usar itens

if(!instance_exists(obj_oponente)){
	draw_set_colour(c_black);
	draw_text(room_width, room_height/2, " Aguardando Oponente... SLK CLIENT FALIU KKKK");
}

//condicoes de vitoria
else if(win && obj_oponente.win){ // condicao de empate
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	draw_text(room_width/2, room_height/2, "EMPATE");
}

else if(win){ // condicao de vitoria
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	draw_text(room_width/2, room_height/2, "VOCE VENCEU! YIEP");
}

else if(lose){ // condicao de vitoria
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	draw_text(room_width/2, room_height/2, "VOCE PERDEU, SEU BETINHA -1000 AURA DESISTA DOS SEUS SONHOS E MORRA");
}

else if(turno_draw){ // fase de compra
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	//draw_text(x_msg, y_msg, "TURNO DE COMPRA");
	draw_sprite(spr_msg_turno_compra,0,x_msg,y_msg);
	
}

else if(turno_campo){ // fase de campo
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	//draw_text(x_msg, y_msg, "TURNO DE CAMPO");
	draw_sprite(spr_msg_turno_acao,0,x_msg,y_msg);
}

else { // turno do oponente
	draw_set_halign(fa_center)
	draw_set_colour(c_black);
	//draw_text(x_msg, y_msg, "TURNO DO OPONENTE");
	draw_sprite(spr_msg_turno_oponente,0,x_msg,y_msg);
}