/* Left Release funçao carregada quando se solta um objeto com o mouse esquerdo*/

if(!connected){// conecta o servidor atraves do script scr_server_create
	server = scr_server_create(9000); // 9000 vai ser usado como porta para concetar com o server
}
if(server >=0 && !connected){// se o valor continuar falso e server for >=0, conexao vai ser verdadeira
	connected = true;
}

