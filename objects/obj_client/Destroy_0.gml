// eveto destroy garante que a lista de mapeamento do cliente e o socket tambem sejam destruidos

ds_map_destroy(clientmap);
network_destroy(socket);
