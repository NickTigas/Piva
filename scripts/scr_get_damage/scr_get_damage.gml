function scr_get_damage(){
	var cardNum = argument0,
	atack = argument1;
	
	if(atack == 1){
		return nums[(cardNum-1)*7+3];
	}
	else{
		//scr_get_damage_2(cardNum);
		return nums[(cardNum-1)*7+5];
	}
}