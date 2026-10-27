function scr_embaralhar_deck(){
var numembaralha = 100;
//num de vezes que sera embaralhado

if(deckCount == 0){
	return;
}
//condicao p/ n embaralhar o deck

for(j=0;j<numembaralha;j++){
	//acao de embaralhar
	for(i = 0; i < deckCount; i++){
		var temp_1 = irandom_range(0, deckCount-1);
		if(deck[i] > 0 && deck[temp_1] > 0){
			var temp_2 = deck[i];
			deck[i] = deck[temp_1];
			deck[temp_1] = temp_2;
		}
	}
}
return;
}