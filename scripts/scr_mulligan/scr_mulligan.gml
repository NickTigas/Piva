function scr_mulligan(){
	var player = argument0;

	for(i=0;i<=handCount;i++){
		player.deck[player.deckCount++] = player.hand[i];
		player.hand[i] = 0;
		instance_destroy(player.hand[i]);
	}

	var temp1 = player.handCount;
	player.handCount = 0;
	
	with(player){
		scr_embaralhar_deck();
		self.temp = temp1;
		if(alarm[3] == -1){
			alarm[3] = 1;
		}
	}
	return;
}