if(point_distance(x,y,player.discard_x, player.discard_y) == 0){
	player.discard[player.discardCount++] = cardNum;
	instance_destroy();
}
else{
	alarm[2] = 1;
}