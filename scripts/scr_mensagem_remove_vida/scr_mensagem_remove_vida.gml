function scr_mensagem_remove_vida(valor)
{
    var buffer = buffer_create(8, buffer_fixed, 1);

    buffer_write(buffer, buffer_u8, MENSAGEM_VIDA_REMOVE);
    buffer_write(buffer, buffer_u8, valor);

    network_send_packet(obj_client.socket, buffer, buffer_tell(buffer));

    buffer_delete(buffer);
}