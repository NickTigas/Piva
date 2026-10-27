if(temp2 < temp3){
	with(handCard[0]){
		player.discard[player.discardCount++] = cardNum;
		scr_remove_from_hand();
		instance_destroy();
	}
	temp2++;
	alarm[4] = 10;
}
else{
	if(alarm[3] == -1){
		alarm[3] = 5;
	}
}