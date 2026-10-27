if(player.alarm[0] > -1){return;}
if(player.alarm[3] > -1){return;}
if(player.alarm[4] > -1){return;}

for(i=0; i <4;i++){
	if(player.field[i] == 0 && scr_is_academico(self.cardNum)){
		if(x> player.field_x_cord[i] - card_width/2 && x < player.field_x_cord[i] + card_width/2){
			if(y> player.field_y_cord[i] - card_height/2 && x < player.field_y_cord[i] + card_height/2){
				player.field[i] = self.cardNum;
				// permite que nao possa colocar 2 cartas na mesma posicao
				
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
					d_counters = src_get_hp()/10;
					x_pos = player.field_x_cord[self.posicao];
					y_pos = player.field_y_cord[self.posicao];
					sprite_index = sprite;
					// cria uma carta no campo
				}
				player.handCount--;
				player.hand[hand_posicao] = 0;
				for(i = hand_posicao; i <5;i++){
					player.hand[i] = player.hand[i+1];
					if( i < player.handCount){
						player.handCard[i] = player.handCard[i+1];
						player.handCard[i].hand_posicao--;
						player.handCard[i].depth--;
						// muda a posicao da carta na mao
					}
				}
				// destruir a copia fake da carta q fica na mao
				instance_destroy();
			}
		}
	}
	if(scr_is_item(self.cardNum)){
		var field_pos = scr_field_pos();
		
		if(field_pos > -1 && player.fieldCard[field_pos] !=noone){
			player.fieldCard[field_pos].pilha[player.fieldCard[field_pos].pilha_count++] = self.cardNum;
			scr_remove_from_hand();
			instance_destroy();
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