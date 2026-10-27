function scr_init_vetores(){
	var
	i = 0,
	j = 0,
	z = 0;
	// Robotico
	nums[i++] = ++z; //numero da carta 1
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Robotico"; // nome
	strings[j++] = "ROBOTIC"; // tipo
	nums[i++] = 30; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 5 //dano (aumento em 50% a cada turno)
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar

	// Atraso
	nums[i++] = ++z; //numero da carta 2
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Atraso"; // nome
	strings[j++] = "TIME"; // tipo
	nums[i++] = 30; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 10 //dano Ataque = 50% de devolver o ataque pro inimigo
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar

	// Poison
	nums[i++] = ++z; //numero da carta 3
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Poison"; // nome
	strings[j++] = "TOXIC"; // tipo
	nums[i++] = 20; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 20 //dano
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar

	// Pacifico
	nums[i++] = ++z; //numero da carta 4
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Pacifico"; // nome
	strings[j++] = "PACIFIC"; // tipo
	nums[i++] = 40; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 10 //dano Ataque = 1/2 do ataque recebido
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Eletrico
	nums[i++] = ++z; //numero da carta 5
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Eletrico"; // nome
	strings[j++] = "ELETRICITY"; // tipo
	nums[i++] = 50; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 10 //dano
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// BracoRobotico
	nums[i++] = ++z; //numero da carta 6
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "Braço Robótico"; // nome
	strings[j++] = "ITEM"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 30 //dano
	strings[j++] = "Nome da habilidade"; //atack ou passiva 2
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 30 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Pote da ganancia
	nums[i++] = ++z; //numero da carta 7
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "Pote da Ganacia"; // nome
	strings[j++] = "ITEM RAPIDO"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = "Compre 2 cartas"; //atack ou passiva 1
	strings[j++] = "Compra 2 cartas";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //atack ou passiva 2
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Barramento do Coic
	nums[i++] = ++z; //numero da carta 8
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "Barramento do Coic"; // nome
	strings[j++] = "ITEM RAPIDO"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = "Barrado"; //atack ou passiva 1
	strings[j++] = "Jogue todas as cartas da sua mão para a pilha da DP";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //atack ou passiva 2
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Energia Eletrica
	nums[i++] = ++z; //numero da carta 9
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "ELETRICITY ENERGY"; // nome
	strings[j++] = "ENERGY"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = ""; //atack ou passiva 1
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //atack ou passiva 2
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //tiipo da fraqueza
	strings[j++] = ""; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Item de cura
	nums[i++] = ++z; //numero da carta 10
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "Poção de vida"; // nome
	strings[j++] = "ITEM HEALING"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = ""; //atack ou passiva 1
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //atack ou passiva 2
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //tiipo da fraqueza
	strings[j++] = ""; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Man in the middle
	nums[i++] = ++z; //numero da carta 11
	strings[j++] = "Comum"; // raridade da carta
	strings[j++] = "Man in the middle"; // nome
	strings[j++] = "ITEM RAPIDO"; // tipo
	nums[i++] = 0; //hp
	strings[j++] = ""; //atack ou passiva 1
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //atack ou passiva 2
	strings[j++] = "";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = ""; //tiipo da fraqueza
	strings[j++] = ""; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	// Hacker
	nums[i++] = ++z; //numero da carta 12
	strings[j++] = "Lendario"; // raridade da carta
	strings[j++] = "Hacker"; // nome
	strings[j++] = "VIRUS"; // tipo
	nums[i++] = 20; //hp
	strings[j++] = "Nome da habilidade"; //atack ou passiva 1
	strings[j++] = "oq ela faz";
	nums[i++] = 0; //custo
	nums[i++] = 20 //dano
	strings[j++] = "\0"; //atack ou passiva 2
	strings[j++] = "\0";
	nums[i++] = 0; //custo
	nums[i++] = 0 //dano
	strings[j++] = "Tipo da Fraqueza dele"; //tiipo da fraqueza
	strings[j++] = "\0"; // resistencia
	nums[i++] = 0; //custo pra trocar
	
	
	return z;
}
