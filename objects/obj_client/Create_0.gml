/* Create Event geralmente serve como campo de declaracao de variaveis globais, como para funcionamento base
de algunas features */

#macro MENSAGEM_JOIN 1
#macro MENSAGEM_HAND_CHANGE 2
#macro MENSAGEM_FIELD_SET 3
#macro MENSAGEM_ENERGY_ADD 4
#macro MENSAGEM_DISCARD 5
#macro MENSAGEM_SEND_DAMAGE 6
#macro MENSAGEM_CARD_POS_TROCA 7
#macro MENSAGEM_LEAVE 8
// valor dos macros indica como lidar com valor do buffer que sera enviado/recebido

// armazena se o client se conectou ou não ao servidor 
connect = scr_client_connect("127.0.0.1", 9000); // por enquanto esta com o IP do pc, porta = 9000
//127.0.0.1


/*
if (!global.connect) {
    var res = scr_client_connect("172.22.176.1", 9000);

    if (res >= 0) {
        global.connect = true;
    } else {
        show_debug_message("tentando conectar...");
    }
}
*/


persistent = true;

/* Uma instância persistente é aquela que será "transportada" de uma sala para outra, o que significa 
(por exemplo) que ela só precisa ser criada uma vez no início do jogo e estará presente em todas as salas
seguintes. Cuidado com persistência deve ser tomado, pois é fácil perder o controle de instâncias persistentes, 
o que pode levar a problemas mais adiante no desenvolvimento do jogo. */

