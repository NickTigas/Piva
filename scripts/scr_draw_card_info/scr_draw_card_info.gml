function scr_draw_card_info(){
	
	var 
	cardNum = argument0,
	i = 1,
	tempNum = (cardNum-1)*6,
	tempString = (cardNum-1)*9;

	draw_set_color(c_blue);
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),nums[tempNum++]);
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),string(strings[tempString++]));
	draw_text(10,12*(i++),nums[tempNum++]);

}