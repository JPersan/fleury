Dado("que acesse o menu {string}") do |item|
    home.acessar_site
    home.acessar_menu(item)
end

E("escolha as facilidades no filtro") do
    unidades.abrir_filtro
    unidades.selecionar_opcao
end

Quando("clicar na primeira unidade exibida") do
    @nome_unidade = unidades.seleciona_unidade
end

Entao("o nome da Unidade deve representar o selecionado") do
    expect(unidade_detalhes.nome_unidade_detalhes).to eql @nome_unidade
end
