function scr_dp_field_card(){
	var i = argument0 + 1,
	temp = instance_create_depth(x_pos + i*7, y_pos - i*7, 0, obj_field_card),
	pile_num = pile[i-1];
	with(temp){
		sprite_index = sprite_vetor[pile_num];
		id.cardNum = pile_num;
		if(alarm[0] == -1){
			alarm[0] = 2;
		}
		player = obj_player;
		id.posicao = -i;
		health_points = scr_get_hp(id.cardNum)/10;
		
	}
}