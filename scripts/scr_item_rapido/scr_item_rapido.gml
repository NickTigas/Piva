function scr_item_rapido(){
	var cardNum = argument0;
	
	if(cardNum == 7){ //pote da ganancia
		remove_from_hand = 1;
		with(player){
			temp = handCount+1;
			if(alarm[3] == -1){
				alarm[3] = 1;
			}
		}
	}
	/*
	else if(cardNum == 8){//coic
		with(player){
			temp3 = handCount-1;
			temp2 = 0;
			temp = temp3;
			if(alarm[4] == -1){
				alarm[4] = 10;
			}
		}
		remove_from_hand =1;
	}*/
	
	
	else if(cardNum == 11){//man in the middle
		obj_oponente.card_view = true;
		player.temp = 0;
		if(player.alarm[5] == -1){
			player.alarm[5] = 100;
		}
		remove_from_hand =1;
	}
	
	/*
	else if(cardNum == 10)
	{
    remove_from_hand = true;

	   with(player){
		if(instance_exists(fieldCard[0])){
			with(fieldCard[0]){
	        d_counters += 1;

	            if(d_counters < 0){
	                d_counters = 0;
					}
				}
			}
		}
	}*/
}