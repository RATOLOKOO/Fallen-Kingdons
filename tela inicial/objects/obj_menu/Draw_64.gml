//Desenhando todos os intens do meu menu
for (var i = 0; i < array_length(menu); i++)
{
	var _cor = c_white;
	//Definindo a fonte do menu
	draw_set_font(fnt_menu);
	
	//Pegando a altura do meu texto
	var _altura = string_height("I")* 1.5;
	
	var _margem = 0;
	
	//checando se a opção atual está selecionada
	if (i == atual)
	{
		_cor = c_red;
		_margem = margem;
	}
	draw_set_color(_cor)
	draw_text(20 + _margem, 20 + _altura * i, menu[i].texto);
	draw_set_color(-1);
	draw_set_font(-1);
}