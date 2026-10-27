function scr_field_pos(){
	var i;
	for(i=0; i <4;i++){
		if(x> player.field_x_cord[i] - card_width/2 && x < player.field_x_cord[i] + card_width/2){
			if(y> player.field_y_cord[i] - card_height/2 && x < player.field_y_cord[i] + card_height/2){
				return i;
			}
		}
	}
	return -1;
}