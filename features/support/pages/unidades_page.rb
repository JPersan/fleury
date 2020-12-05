class UnidadesPage < SitePrism::Page 
    extend SitePrism::Table
    include Capybara::DSL

    # mapped elements
    element :btn_selecione, "div[class='checkbox-selectcomponentstyle__CheckboxSelectPlaceholderStyled-sc-7ktrvg-2 jgzIlF']"
    element :btn_metro, :xpath, "//div[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI'][1]"
    element :btn_bicicletario_vaga_verde, :xpath, "//div[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI'][2]"
    element :btn_vacinacao, :xpath, "//div[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI'][6]"
    element :txt_primeira_unidade, :xpath, "//div[@class='boxcomponentstyle__Item-sc-43ermp-1 kVNSgu'][1]//h3", match: :first

    # wait for the eases filter to be visible then click on it
    def abrir_filtro
        wait_until_btn_selecione_visible
        btn_selecione.click
    end

    # click on the designated ease according to the mapping and at the end focuses on the last one for better visibility on report 
    def selecionar_opcao
        btn_metro.click
        btn_bicicletario_vaga_verde.click
        foco(btn_vacinacao)
    end

    # get the first returned unity text name for comparison
    def seleciona_unidade
        nome_unidade = txt_primeira_unidade.text
        txt_primeira_unidade.click
        return nome_unidade
    end
end