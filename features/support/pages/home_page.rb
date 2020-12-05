require = 'componentes_page/menu_superior.rb'

class HomePage < SitePrism::Page
    include Capybara::DSL

    def acessar_site
        visit "/"
    end

    def acessar_menu(item)
        menu_superior = MenuSuperiorPage.new
        menu_superior.clicar_menu(item)
    end
end