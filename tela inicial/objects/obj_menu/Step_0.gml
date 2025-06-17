//Mudando de opção
//Descendo pelo menu
if (keyboard_check_pressed(vk_down))
{
	atual++;
	
	margem = 0;
}
//Subindo no menu
if (keyboard_check_pressed(vk_up)) 
{
	atual--;
	
	//Zerando a margem
	margem = 0;
}

//Limitando a variavel atual
atual = clamp(atual, 0, array_length(menu) -1);

//Se apertar enter, executa a função do menu
if keyboard_check_pressed(vk_enter)
{
	menu[atual].funcao();
}
//Fazendo o valor da margem aumentar
margem = lerp(margem, 20, .2);