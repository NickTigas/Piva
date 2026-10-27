function scr_deck_init(){
	var i = 0;
	ini_open("Game.ini");
	for(i=0;i<20;i++){
		deck[i] = ini_read_real("deck",string(i), 1);
	}
	deckCount = 20;
	ini_close();	
}