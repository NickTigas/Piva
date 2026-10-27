selected = true;
if(txt == "cancel" && obJ_create_deck.deckCount > 0){
	with(obJ_create_deck){
		deck[--deckCount] = 0;
	}
}
else if(txt = "save" && obJ_create_deck.deckCount = 20){
	ini_open("Game.ini");
	for(var i =0;i<20;i++){
		ini_write_real("deck",string(i), obJ_create_deck.deck[i]);
	}
	ini_close();
}

if(txt != "cancel" && txt != "save"){
	selected = true;
}