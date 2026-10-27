if(point_distance(x,y,player.discard_x, player.discard_y) == 0){
	scr_mensagem_dp(cardNum);
	player.discard[player.discardCount++] = cardNum;
	instance_destroy();
}
else{
	alarm[2] = 1;
}