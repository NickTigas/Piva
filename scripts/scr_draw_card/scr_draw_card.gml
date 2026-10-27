function scr_draw_card(){
	hand[handCount] = deck[deckCount-1];
	handCount++;
	deckCount--;
}