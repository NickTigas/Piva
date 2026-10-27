function scr_item_rapido(){
	var cardNum = argument0;
	
	if(cardNum = 7){ //pote da ganancia
		remove_from_hand = 1;
		with(player){
			temp = handCount+1;
			if(alarm[3] == -1){
				alarm[3] = 1;
			}
		}
	}
	else if(cardNum = 8){
		with(player){
			temp3 = handCount-1;
			temp2 = 0;
			temp = temp3;
			if(alarm[4] == -1){
				alarm[4] = 10;
			}
		}
		remove_from_hand =1;
	}
}