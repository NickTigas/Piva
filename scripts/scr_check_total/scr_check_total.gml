function scr_check_total(){
	var cardNum = argument0,
	temp = 0;
	
	with(obJ_create_deck){
		for(i=0;i<deckCount;i++){
			if(deck[i] == cardNum){
				temp++;
			}
		}
	}
	return temp;

}