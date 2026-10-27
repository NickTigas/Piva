function src_draw(){
// condicao pra comprar carta
var num = argument0;

// condicao p/ n comprar carta
if(deckCount - num <0){
return;
}
if(obj_hand.handCount == MAXHAND)
{
	return;
}

for(i = 0; i<num;i++){
	deckCount --;
	obj_hand.hand[obj_hand.handCount] = deck[deckCount];
	obj_hand.handCount++;

}
}