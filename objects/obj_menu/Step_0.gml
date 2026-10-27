//234 457 x pos batt
//359 758 y pos batt
if(mouse_x >= 234 && mouse_x <= 457){
	if(mouse_y >= 629 && mouse_y <= 754){
		opc = 2;
	}
	else{
	opc = 0;
	}
}
//110 177 x pos Deck
//144 843 y pos Deck
if(mouse_x >= 110 && mouse_x <= 177){
	if(mouse_y >= 777 && mouse_y <= 840){
		opc = 1;
	}
	else{
	opc = 0;
	}	
}

//ini_open("Game.ini");


if(mouse_check_button_released(mb_left)){
	if(opc == 1 /*&& ini_section_exists("deck")*/){ 
	//ini_close();
	room_goto(2);
	}
	else if(opc == 2){room_goto(1);}
}