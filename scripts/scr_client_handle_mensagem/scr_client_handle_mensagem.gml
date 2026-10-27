function scr_client_handle_mensagem(){
	var buffer = argument0;
	
	// passa o socket_id do cliente que mandou a mensagem para encontrar o oponente
	
	/* quando o servidor recebe uma mensagem ele precisa determinar o oponente para enviar a mensagem correta
	ao cliente */
	
	/* combina varias mensagens em um unico buffer quando varias mensagemns sao enviadas ao mesmo tempo por
	um cliente */
	while(true){
		// primeira coisa lida do buffer sempre deve ser o id de mensagem
		var mensagem_id = buffer_read(buffer, buffer_u8), // u8 tamanho de dados que sera lido do buffer [
		// tamanho 8
		client = buffer_read(buffer, buffer_u16);
		
		//var oponenteObj = scr_oponente_get_object(client);
		
		switch(mensagem_id){
			case MENSAGEM_JOIN:
		
				oponenteObj = scr_oponente_get_object(client);
				
			break;
			
			case MENSAGEM_HAND_CHANGE:
				oponenteObj = scr_oponente_get_object(client);
				var i;
				with(oponenteObj){
				// com o objeto oponente altera o handCount do obj oponente para os proxs 8bits do buffer
				handCount = buffer_read(buffer, buffer_u8);
				
				//dps altera o deckCount do obj oponente para os proxs 8bits do buffer
				deckCount = buffer_read(buffer, buffer_u8);
					for(i = 0; i<handCount; i++){
						// define a mão do oponente para os prox 32bits do buffer p/ cada handCount
						hand[i]= buffer_read(buffer, buffer_u32);
					}
					// as prox posicoes da mao possiveis setadas para 0
					for(i = handCount;i< 20; i++){
						hand[i]= 0;
					}
				}
			
			break;
			
			case MENSAGEM_FIELD_SET:

			with(oponenteObj){
				var posicao = buffer_read(buffer, buffer_u8), // buffer_u8 (tamanho)
				cardNum = buffer_read(buffer, buffer_u32) ;
				field[posicao] = cardNum;  // envia os dados da posicao da carta em campo
			}
			
			break;
			
			case MENSAGEM_ENERGY_ADD:

			with(oponenteObj){
				var posicao = buffer_read(buffer, buffer_u8),
				cardNum = buffer_read(buffer, buffer_u32) ;
				with(fieldCard[posicao]){
				pilha[pilha_count++] = cardNum; // envia os dados da posicao das cartas de energia em campo
				}
			}
			
			break;
			
			case MENSAGEM_DISCARD:

			with(oponenteObj){
				var cardNum = buffer_read(buffer, buffer_u32) ;
				discard[discardCount++] = cardNum; // envia os dados da posicao das cartas de energia em campo
				}
			
			break;
			
			case MENSAGEM_SEND_DAMAGE:

			with(obj_player){// aq era o erro kk...
				var damage = buffer_read(buffer, buffer_u8),
				posicao = buffer_read(buffer, buffer_u8),
				move = buffer_read(buffer, buffer_u8);

			
				with(fieldCard[posicao]){
					d_counters -= damage;
					}
				}
				with(oponenteObj){
				move_select = move;	
				}
				
			break;
			
			case MENSAGEM_ITEM_ADD:

			with(oponenteObj){
				var posicao = buffer_read(buffer, buffer_u8),
				cardNum = buffer_read(buffer, buffer_u32) ;
				with(fieldCard[posicao]){
				pilha[pilha_count++] = cardNum; // envia os dados da posicao das cartas de item em campo
		}
			}
			
			break;
			
			
			case MENSAGEM_TURNO:
			
			with(obj_player){
				turno = buffer_read(buffer, buffer_u8);
			}
			
			break;
			
			case MENSAGEM_CARD_SHOW:
				
				var cardNum = buffer_read(buffer, buffer_u32);
				
				instance_create_layer(room_width/2 - big_card_width/2, room_height/2, "Instances", obj_preview);
				with(obj_preview){
					id.cardNum = cardNum;
					alarm[0] = 40;
				}
				
			break;
			
			case MENSAGEM_TURNO_CHANGE:
			
				with(obj_player){
					turno_draw = true;
					scr_reset_switches();
				}
			
			break;
			
			case MENSAGEM_ENERGY_REMOVE:
			
				var card_posicao = buffer_read(buffer, buffer_u8),
				energy_posicao = buffer_read(buffer, buffer_u8);
				
				with(oponenteObj){
					with(fieldCard[card_posicao]){
						player.discard[player.discardCount++] = pile[energy_posicao];
						for(i = energy_posicao; i< pilha_count-1; i++){
							pilha[i] = pilha[i+1];
						}
						pilha[pilha_count--] = 0;
						for(i=0;i<token_count;i++){
							tokens[i] = 0;
						}
					}
				}
			break;
			
			case MENSAGEM_SEND_RESULTADO:
			
				var resultado = buffer_read(buffer, buffer_u8);
				with(oponenteObj){
					if(resultado){win = true; obj_player.lose = true;}//vitoria oponente
					else{lose = true; obj_player.win = true;}//vitoria player
				}
			
			break;
			
			case MENSAGEM_CARD_POS_TROCA:
			
			var posicao1 = buffer_read(buffer, buffer_u8),
			posicao2 = buffer_read(buffer, buffer_u8);

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
			
			break;
		}
		
		
		// buffer tell eh a posicao do buffer para ler
		if(buffer_tell(buffer) == buffer_get_size(buffer)){//ve se todas as mensagens foram lidas e combinadas
			break;
		}
	}
	
	

}