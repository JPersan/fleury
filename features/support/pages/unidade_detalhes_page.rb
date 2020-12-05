class UnidadeDetalhesPage < SitePrism::Page 
    extend SitePrism::Table
    include Capybara::DSL

    # mapped elements 
    element :txt_unidade, :xpath, "//h1[@class='typographycomponentstyle__H1-sc-1oox73n-1 lomAMa']"
    element :txt_horario_unidade, :xpath, "//h2[@class='typographycomponentstyle__H2-sc-1oox73n-2 hRydmm']"

    # wait for element exists to get text
    def nome_unidade_detalhes
        wait_until_txt_horario_unidade_visible
        return txt_unidade.text
    end
end