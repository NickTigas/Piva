for(i=0;i<4;i++){
	if(field[i] > 0 && fieldCard[i] == noone){
		fieldCard[i] = instance_create_depth(field_x_cord[i], field_y_cord[i],1,obJ_op_field);
		var cardNum = field[i],
		sprite = sprite_vetor[cardNum],
		posicao = i;
		with(fieldCard[i]){
			player = obj_oponente;
			self.cardNum = cardNum;
			self.posicao = posicao;
			d_counters = scr_get_hp(self.cardNum)/10;
			x_pos = player.field_x_cord[self.posicao];
			y_pos = player.field_y_cord[self.posicao];
			sprite_index = sprite;
		}
	}
	/*else if(field[i] != noone && fieldCard[i] != fieldCard[i].cardNum){
		var cardNum = field[i],
		sprite = sprite_vetor[cardNum],
		posicao = i;
		with(fieldCard[posicao]){
			sprite_index = sprite_vetor[cardNum];
			for(i=pilha_count;i>0;i--){
				pilha[i] = pilha[i-1];
			}
			pilha[0] = self.cardNum;
			pilha_count++;
			self.posicao = posicao;
			d_counters = src_get_hp(cardNum)/10 + d_counters - src_get_hp(self.cardNum)/10;
			self.cardNum = cardNum;
			player.field[self.posicao] = cardNum;
		}
	}*/
	
	
	else if(field[i] == 0 &&fieldCard[i] !=noone){
		instance_destroy(fieldCard[i]);
		fieldCard[i] = noone;
	}
	
	
}