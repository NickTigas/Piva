function scr_in_center(){
	if(x > room_width/2 - 105 && x < room_width/2 + 105){
		if(y > room_height/2 - 105 && y < room_height/2 + 105){
			return 1;
	}
	}
	return 0;
}