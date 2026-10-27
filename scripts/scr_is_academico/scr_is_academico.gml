function scr_is_academico(){
	var cardNum = argument0;
	// vezes 9 pq tem 9 strings em todos os academicos ja o 2 eh a 3 string que tem o tipo
	if(strings[(cardNum-1)*9+2] == "ITEM" || strings[(cardNum-1)*9+2] == "ITEM RAPIDO" || strings[(cardNum-1)*9+2] == "ENERGY" ){
		return 0;
	}
	return 1;
}