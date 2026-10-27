function scr_item_healing(){
	
	var cardNum = argument0;
	
	if(cardNum == 10)
	{
    remove_from_hand = true;

	   with(player){
		if(instance_exists(fieldCard[0])){
			with(fieldCard[0]){
	        d_counters += 1.5;

	            if(d_counters < 0){
	                d_counters = 0;
					}
				}
			}
		}
	}
}