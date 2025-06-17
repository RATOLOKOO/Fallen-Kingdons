//Criando as estruturas do menu
opcao1 =
{
	texto : "Jogar",
	
	funcao : function()
	{
		room_goto(rm_jogo);
	},
}

opcao2 =
{
	texto : "sair",
	
	funcao : function()
	{
		game_end();
	},
}

opcao3 =
{
	texto : "Opção 3",
}

opcao4 =
{
	texto : "Opção 4",
}

opcao5 =
{
	texto : "Opção 5",
}



//Menu
menu = [opcao1, opcao2, opcao3, opcao4, opcao5];

//Variavel para saber qual o indice atual
atual = 0;


//Margem do menu
margem = 0;