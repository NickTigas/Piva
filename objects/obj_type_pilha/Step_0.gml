var click = mouse_check_button_pressed(mb_left);

// tipos elementais
if(txt = "eletricity" && done = 0){
	sprite_index = spr_big_eletrecity_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ELETRICITY" || scr_get_name(i)== "ELETRICITY ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
// adiciona os tipos como bolinhas interagiveis para ver e selecionar cartas daql tipo
else if(txt = "pacific" && done = 0){
	sprite_index = spr_big_pacific_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "PACIFIC" || scr_get_name(i)== "PACIFIC ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "robotic" && done = 0){
	sprite_index = spr_big_robotic_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ROBOTIC" || scr_get_name(i)== "ROBOTIC ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "time" && done = 0){
	sprite_index = spr_big_time_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "TIME" || scr_get_name(i)== "TIME ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "toxic" && done = 0){
	sprite_index = spr_big_toxic_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "TOXIC" || scr_get_name(i)== "TOXIC ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "virus" && done = 0){
	sprite_index = spr_big_virus_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "VIRUS" || scr_get_name(i)== "VIRUS ENERGY"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}

// tipos de item

else if(txt = "item" && done = 0){
	sprite_index = spr_big_item_academico_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ITEM"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "item_campo" && done = 0){
	sprite_index = spr_big_item_campo_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ITEM CAMPO"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "item_equip" && done = 0){
	sprite_index = spr_big_item_equip_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ITEM EQUIP"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "item_healing" && done = 0){
	sprite_index = spr_big_item_healing_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ITEM HEALING"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}
else if(txt = "item_rapido" && done = 0){
	sprite_index = spr_big_item_rapido_token;
	for(i = 1; i <=z;i++){
		if(scr_get_type(i) == "ITEM RAPIDO"){
			deck[deckCount++] = i;
		}
		if(i==z){done = 1;}
	}
}

// botões

else if(txt = "cancel" ){
	sprite_index = spr_cancel_buttom;
	if(obJ_create_deck.deckCount == 0){
		image_alpha = 0.5;
	}
	else{
		image_alpha = 1;
	}
}

else if(txt = "save" ){
	sprite_index = spr_save_button;
	if(obJ_create_deck.deckCount == 20){
		image_alpha = 1;
	}
	else{
		image_alpha = 0.5;
	}
}


if(selected == true){
	if(click && mouse_y < 124){
		selected = false;
		deck_x_2 = deck_x;
	}
		
	
	if (click && alarm[0] > -1){
	    var card_selected = deckCount+floor((deck_x_2 - (mouse_x - big_card_width/2)) / (big_card_width + 10)) -1;
		card_selected = deck[card_selected];
	
	    with(obJ_create_deck){
			deck[deckCount++] = card_selected;
		}
	}
	
	if(click && mouse_y > 124 && mouse_y < 417){
		if(alarm[0] == -1){
			alarm[0] = 7; // 7 frames
			// alarm usada como timer
		}
	}
	
	
	if(mouse_y < yview + big_card_height/2 && mouse_y > yview - big_card_height/2){
			if(click){
				xview = deck_x_2 - mouse_x;
			}
			if(click){
				deck_x_2 = xview + mouse_x;
			}
			else if(deck_x_2 >= deck_x){
				deck_x_2 = deck_x-1;
			}
			else if(deck_x_2 <=(deck_x - (deckCount -1)*(big_card_width+10))-5){
				deck_x_2 = (deck_x -  (deckCount)*(big_card_width+10)) + 14 + big_card_width;
		}
	}
}
/*
	var output_string = "aaaa";
var str = "aaaaaaaa";

for (var i = 0; i < argument_count; i++) {
    str = argument[i];
    if (!is_string(str)) str = string(str);
    output_string += str + " ";
}

show_debug_message(output_string);
	*/