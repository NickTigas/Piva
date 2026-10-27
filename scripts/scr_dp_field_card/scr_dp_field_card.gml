function scr_dp_field_card(){
	var i = argument0,
	temp = instance_create_depth(x_pos + i*7, y_pos - i*7, i+1, obj_field_card),
	pile_num = pile[i];
	with(temp){
		sprite_index = sprite_vetor[pile_num];
		id.cardNum = pile_num;
		if(alarm[0] == -1){
			alarm[0] = 10;
		}
		player = obj_player;
		id.posicao = 0;
		health_points = scr_get_hp(id.cardNum)/10;
		
	}
}