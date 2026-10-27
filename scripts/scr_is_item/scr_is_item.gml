function scr_is_item(){
	var cardNum = argument0;
	
	if(strings[(cardNum-1)*9+2] == "ITEM"){
		return 1;
	}
	return 0;
}