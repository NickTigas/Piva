function scr_is_energy(){
	var cardNum = argument0;
	
	if(strings[(cardNum-1)*9+2] == "ENERGY"){
		return 1;
	}
	return 0;

}