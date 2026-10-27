/*  Async - Networking Adicionar a comunicaçao ao servidor */

// async_load eh uma variavel global
/* quando a mensagem for enviada ao servidor async_load tera o valor na posiçao type sera um entre esses:*/
switch(async_load[? "type"]){
	
	case network_type_data:
	// sempre que uma mensagem for recevida pelo cliente azync load tem o valor de type data
	scr_client_handle_mensagem(async_load[? "buffer"]);
	//passa o valor de async load na posicao buffer
	
	break;
	//tinha esquecido desse break
}