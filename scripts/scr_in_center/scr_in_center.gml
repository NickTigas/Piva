function scr_in_center(){
	if(x > room_width/2 - 205 && x < room_width/2 + 205){
		if(y > room_height/2 - 205 && y < room_height/2 + 205){
			return 1;
	}
	}
	return 0;
}