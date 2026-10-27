/*for(i = pilha_count; i > 0;i--){
	if(pilha[i-1] > 0){
		draw_sprite(sprite_vetor[pilha[i-1]], -1, x+5*i, y+5*i);
	}

}*/

draw_self();

if(selected == true){
	draw_sprite(big_sprite_vetor[cardNum], -1, room_width/2, room_height/2);
}

	
for(i=0;i< d_counters; i++){
	if(i < 10){
		draw_sprite(spr_dcounter,-1,x-card_width/2+2+8*i,y-card_height/2-4);
		draw_set_color(c_blue);
		draw_text(x,y,string(d_counters*10));
	}
	else{
		draw_sprite(spr_dcounter,-1,x-card_width/2+2+8*(i-10),y-card_height/2-12);
	}
}

for( i=0; i<60;i++){
	if(tokens[i] > 0){
		if(tokens[i] == 6){
			sprite = spr_item_academico_token;
		}
		// 1 carta apos a outra
		if(i <4){
			draw_sprite_ext(sprite, -1, x-card_width/2+9.5+19*i, y+card_height/2-15,1,1,0,c_white,1);
			//alfa muda a opacidade da imagem, o alfa eh o ultimo numero 
		}
		else if(i <8){
			draw_sprite_ext(sprite, -1, x-card_width/2+9.5+19*i(i-4), y+card_height/2-15-19,1,1,0,c_white,1);
		}
		else if(i <12){
			draw_sprite_ext(sprite, -1, x-card_width/2+9.5+19*i(i-8), y+card_height/2-15-19-19,1,1,0,c_white,1);
		}
		else if(i <16){
			draw_sprite_ext(sprite, -1, x-card_width/2+9.5+19*i(i-12), y+card_height/2-15-19-19-19,1,1,0,c_white,1);
		}
		else if(i <20){
			draw_sprite_ext(sprite, -1, x-card_width/2+9.5+19*i(i-16), y+card_height/2-15-19-19-19-19,1,1,0,c_white,1);
		}
	}
}

if(selected == true){
	depth = - 1000;
	for( i = pilha_count; i > 0; i--){

		var cnum = pilha[i-1];
		var tipo = strings[(cnum-1)*9+2];
		var rot = 0;

		if (tipo == "ITEM") {
		    rot = 270;
		}
		
		draw_sprite_ext(big_sprite_vetor[pilha[i-1]], -1, room_width/2-pilha_count+20/2+20*(i), room_height/2+pilha_count*20/2-20*(i),1,1,rot,c_white,1);
		// 20 pixels a mais, buffer q aumenta ou diminui o tamanho das cartas
	}
	draw_sprite(big_sprite_vetor[cardNum], -1, room_width/2-pilha_count*20/2, room_height/2+pilha_count*20/2);
	scr_pilha_select();
}
else{
	temp = -1;
	depth = -posicao;
}

if( temp > -1){
	
	var cnum = pilha[temp-1];
	var tipo = strings[(cnum-1)*9+2];
	var rot = 0;

	if (tipo == "ITEM") {
	    rot = 270;
	}
	draw_sprite_ext(big_sprite_vetor[pilha[temp-1]], -1, room_width/2-pilha_count+20/2+20*(temp), room_height/2+pilha_count*20/2-20*(temp),1,1,rot,c_white,1);
}