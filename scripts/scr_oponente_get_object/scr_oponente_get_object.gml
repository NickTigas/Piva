function scr_oponente_get_object(){
	
	var client_id = argument0;
	
	// verfica se o objeto cliente desse cliente foi adicionado ao mapa cliente
	if(ds_map_exists(clientmap, string(client_id))){
		
		return clientmap[? string(client_id)]; // retorna o objeto cliente na posicao client_id
	}
	else{ // se obj cliente nao foi adicionado, sera adicionado
		var l = instance_create_layer(room_width/2, room_height/2, "Instances", obj_oponente); 
		// cria o obj oponente
		
		clientmap[? string(client_id)] = l; //esqueci de map
		// atrela a variavel obj oponente a posicao client_id do  do mapa client
		return l;
	}
}