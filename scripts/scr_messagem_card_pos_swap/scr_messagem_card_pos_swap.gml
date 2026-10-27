function scr_messagem_card_pos_swap(){
	if(!instance_exists(obj_client)){
		return 
	}
	
	buffer_seek(obj_client.send_buffer, buffer_seek_start, 0); // começa no inicio do buffer
	buffer_write(obj_client.send_buffer, buffer_u8, MENSAGEM_CARD_POS_TROCA); // dps escreve o id de mensagem (energy add)
	buffer_write(obj_client.send_buffer, buffer_u8, argument0); // posicao da carta em campo
	buffer_write(obj_client.send_buffer, buffer_u8, argument1); // numero da carta
		
	network_send_raw(obj_client.socket, obj_client.send_buffer, buffer_tell(obj_client.send_buffer));
	/*
	with(oponenteObj){
				//id para serparar esse posicao local especifica dessa parte do codigo
				with(fieldCard[posicao1]){
					id.posicao = posicao2;
					x_pos = player.field_x_cord[id.posicao];
					y_pos = player.field_y_cord[id.posicao];	
				}
				with(fieldCard[posicao2]){
					id.posicao = posicao1;
					x_pos = player.field_x_cord[id.posicao];
					y_pos = player.field_y_cord[id.posicao];	
				}
				
				var tempObject = fieldCard[posicao1];
				fieldCard[posicao1] = fieldCard[posicao2];
				fieldCard[posicao2] = tempObject;
				
				var tempNum = fieldCard[posicao2];
				fieldCard[posicao2] = fieldCard[posicao1];
				fieldCard[posicao1] = tempNum;
				
		}
		*/
}