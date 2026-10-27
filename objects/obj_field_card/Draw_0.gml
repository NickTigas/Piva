draw_self();

if(selected == true){
	draw_sprite(big_sprite_vetor[cardNum], -1, room_width/2, room_height/2);
}

	
for(i=0;i< d_counters; i++){
	if(i < 10){
		draw_sprite(spr_dcounter,-1,x-card_width/2+2+8*i,y-card_height/2-4);
		draw_set_color(c_blue);
		draw_text(x,y,string(d_counters*10));
	}
	else{
		draw_sprite(spr_dcounter,-1,x-card_width/2+2+8*(i-10),y-card_height/2-12);
	}
}