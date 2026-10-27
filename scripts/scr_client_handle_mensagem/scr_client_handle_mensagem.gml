function scr_client_handle_mensagem()
{
    var buffer = argument0;

    while(true)
    {
        var mensagem_id = buffer_read(buffer, buffer_u8);
        var client = buffer_read(buffer, buffer_u16);

        switch(mensagem_id)
        {
            case MENSAGEM_JOIN:

                oponenteObj = scr_oponente_get_object(client);

            break;


            case MENSAGEM_HAND_CHANGE:

                oponenteObj = scr_oponente_get_object(client);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    handCount = buffer_read(buffer, buffer_u8);
                    deckCount = buffer_read(buffer, buffer_u8);

                    for(var i=0; i<handCount; i++)
                    {
                        hand[i]= buffer_read(buffer, buffer_u32);
                    }

                    for(var i=handCount; i<20; i++)
                    {
                        hand[i]=0;
                    }
                }

            break;


            case MENSAGEM_FIELD_SET:

                var posicao = buffer_read(buffer, buffer_u8);
                var cardNum = buffer_read(buffer, buffer_u32);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    field[posicao] = cardNum;
                }

            break;


            case MENSAGEM_ENERGY_ADD:

                var posicao = buffer_read(buffer, buffer_u8);
                var cardNum = buffer_read(buffer, buffer_u32);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    if(instance_exists(fieldCard[posicao]))
                    {
                        with(fieldCard[posicao])
                        {
                            pilha[pilha_count++] = cardNum;
                        }
                    }
                }

            break;


            case MENSAGEM_DISCARD:

                var cardNum = buffer_read(buffer, buffer_u32);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    discard[discardCount++] = cardNum;
                }

            break;


            case MENSAGEM_SEND_DAMAGE:

                var damage = buffer_read(buffer, buffer_u8);
                var posicao = buffer_read(buffer, buffer_u8);
                var move = buffer_read(buffer, buffer_u8);

                with(obj_player)
                {
                    if(instance_exists(fieldCard[posicao]))
                    {
                        with(fieldCard[posicao])
                        {
                            d_counters -= damage;
                        }
                    }
                }

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    move_select = move;
                }

            break;


            case MENSAGEM_ITEM_ADD:

                var posicao = buffer_read(buffer, buffer_u8);
                var cardNum = buffer_read(buffer, buffer_u32);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    if(instance_exists(fieldCard[posicao]))
                    {
                        with(fieldCard[posicao])
                        {
                            pilha[pilha_count++] = cardNum;
                        }
                    }
                }

            break;


            case MENSAGEM_TURNO:

                with(obj_player)
                {
                    turno = buffer_read(buffer, buffer_u8);
                }

            break;


            case MENSAGEM_CARD_SHOW:

                var cardNum = buffer_read(buffer, buffer_u32);

                instance_create_layer(
                    room_width/2-big_card_width/2,
                    room_height/2,
                    "Instances",
                    obj_preview
                );

                with(obj_preview)
                {
                    id.cardNum = cardNum;
                    alarm[0]=40;
                }

            break;


            case MENSAGEM_TURNO_CHANGE:

                with(obj_player)
                {
                    turno_draw=true;
                    scr_reset_switches();
                }

            break;


            case MENSAGEM_ENERGY_REMOVE:

                var card_posicao = buffer_read(buffer,buffer_u8);
                var energy_posicao = buffer_read(buffer,buffer_u8);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    if(instance_exists(fieldCard[card_posicao]))
                    {
                        with(fieldCard[card_posicao])
                        {
                            player.discard[player.discardCount++] = pilha[energy_posicao];

                            for(var i=energy_posicao; i<pilha_count-1; i++)
                            {
                                pilha[i]=pilha[i+1];
                            }

                            pilha_count--;
                            pilha[pilha_count]=0;

                            for(var i=0;i<token_count;i++)
                            {
                                tokens[i]=0;
                            }
                        }
                    }
                }

            break;


            case MENSAGEM_SEND_RESULTADO:

                var resultado = buffer_read(buffer,buffer_u8);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    if(resultado)
                    {
                        win=true;
                        obj_player.lose=true;
                    }
                    else
                    {
                        lose=true;
                        obj_player.win=true;
                    }
                }

            break;


            case MENSAGEM_CARD_POS_TROCA:

                var posicao1 = buffer_read(buffer,buffer_u8);
                var posicao2 = buffer_read(buffer,buffer_u8);

                if(instance_exists(oponenteObj))
                with(oponenteObj)
                {
                    if(instance_exists(fieldCard[posicao1]))
                    {
                        with(fieldCard[posicao1])
                        {
                            id.posicao = posicao2;
                            x_pos = player.field_x_cord[id.posicao];
                            y_pos = player.field_y_cord[id.posicao];
                        }
                    }

                    if(instance_exists(fieldCard[posicao2]))
                    {
                        with(fieldCard[posicao2])
                        {
                            id.posicao = posicao1;
                            x_pos = player.field_x_cord[id.posicao];
                            y_pos = player.field_y_cord[id.posicao];
                        }
                    }

                    var temp = fieldCard[posicao1];
                    fieldCard[posicao1]=fieldCard[posicao2];
                    fieldCard[posicao2]=temp;
                }

            break;
			
			case MENSAGEM_VIDA_REMOVE:

			var dano = buffer_read(buffer, buffer_u8);

			with(oponenteObj)
			{
			    pontos_count -= dano;

			    if(pontos_count < 0)
			        pontos_count = 0;
			}

			break;
			
        }
		
		

        if(buffer_tell(buffer)==buffer_get_size(buffer))
        {
            break;
        }
    }
}