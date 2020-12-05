class MenuSuperiorPage < SitePrism::Page
    include Capybara::DSL
    
    # click on menu item according to parameterized name value
    def clicar_menu(item)
        click_link item
    end
end