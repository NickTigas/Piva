function scr_is_item_healing(){
	var cardNum = argument0;
	
	if(strings[(cardNum-1)*9+2] == "ITEM HEALING"){
		return 1;
	}
	return 0;
}