#language: pt

@consulta_unidades
Funcionalidade: Consulta Unidades
	PARA que eu possa consultar as unidades
	SENDO um usuario com o perfil convencional

@consulta_nome_unidade_facilidades
Cenario: Consulta do nome da Unidade por facilidades
		Dado que acesse o menu "Unidades"
		E escolha as facilidades no filtro
		Quando clicar na primeira unidade exibida
		Entao o nome da Unidade deve representar o selecionado