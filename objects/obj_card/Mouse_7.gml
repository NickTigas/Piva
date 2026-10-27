if(!player.turno_campo){return;}
if(scr_pausa()){return;}
if(player.field_select > 0){return;}
if(player.turno_discard > 0){return;}
if(player.deck_card_select > 0){return;}


for(i=0; i <4;i++){
	if(player.field[i] == 0 && scr_is_academico(self.cardNum)){
		
		if(x> player.field_x_cord[i] - card_width/2 && x < player.field_x_cord[i] + card_width/2){
			if(y> player.field_y_cord[i] - card_height/2 && y/*x*/ < player.field_y_cord[i] + card_height/2){
				player.field[i] = self.cardNum;
				// permite que nao possa colocar 2 cartas na mesma posicao
		if(player.academico_set){return;}
		player.academico_set = true;		
				player.fieldCard[i] = instance_create_depth(player.field_x_cord[i], player.field_y_cord[i], 1, obj_field_card);
				var
				sprite = sprite_index,
				cardNum = self.cardNum,
				posicao = i;
				// amarelo sao variavies locais
				with(player.fieldCard[i]){
					player = obj_player;
					self.cardNum = cardNum;
					self.posicao = posicao;
					d_counters = scr_get_hp(cardNum)/10;
					x_pos = player.field_x_cord[self.posicao];
					y_pos = player.field_y_cord[self.posicao];
					sprite_index = sprite;
					// cria uma carta no campo
				}
				
				// destruir a copia fake da carta q fica na mao
				scr_mensagem_card_show(cardNum);
				scr_mensagem_field_set(posicao, cardNum);
				scr_remove_from_hand();
				instance_destroy();
			}
		}
	}
	
}
if(scr_is_item_rapido(self.cardNum) && scr_in_center()){
	scr_item_rapido(self.cardNum);
	// se for um item usavel remove da mao e usa ele na area central
	if(remove_from_hand){
		if(alarm[2] == -1){
			alarm[2] = 10;
			//valor n importa, a unica coisa e q ele vai se auto incrementar :)
		}
		scr_remove_from_hand();
		
	}
	remove_from_hand = 0;
}
else if(scr_is_item(self.cardNum)){
		var field_pos = scr_field_pos();
		
		if(field_pos > -1 && player.fieldCard[field_pos] !=noone){
			player.fieldCard[field_pos].pilha[player.fieldCard[field_pos].pilha_count++] = self.cardNum;
			scr_mensagem_item_add(field_pos, self.cardNum);
			//scr_mensagem_card_show(self.cardNum); // usar 1 vez a carta por turno
			scr_remove_from_hand();
			instance_destroy();
		}
}


else if(scr_is_energy(self.cardNum)){
	if(player.energy_set){return;}
	var field_pos = scr_field_pos();
		
		if(field_pos > -1 && player.fieldCard[field_pos] !=noone){
			
			player.fieldCard[field_pos].pilha[player.fieldCard[field_pos].pilha_count++] = self.cardNum;
			scr_mensagem_energy_add(field_pos, self.cardNum);
			player.energy_set = true;
			scr_mensagem_card_show(self.cardNum); // usar 1 vez a carta por turno
			scr_remove_from_hand();
			instance_destroy();
		}
}

scr_mensagem_hand_change();