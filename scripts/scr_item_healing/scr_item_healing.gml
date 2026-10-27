function scr_item_healing(){
	var cardNum = argument0;
	
	if(cardNum = 10){ // poção de vida
		remove_from_hand = 1;
		with(player){
			
			
			with(fieldCard[posicao]){
					d_counters += 10;
			}
		}
	}
}