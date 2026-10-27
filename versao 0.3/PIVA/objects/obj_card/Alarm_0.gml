card_in_hand = true;
card_drawn = false;
// vai definir o evente de movimentacao da carta

// comeca o caminho de comrpa da carta ate a mao quando iniciar a partida

path_start(deck_draw_path, 15, path_action_stop, false);
if(alarm[1] == -1)
{
	alarm[1] = 25;
}
//15 de speed
