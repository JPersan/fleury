Dir[File.join(File.dirname(__FILE__), 'pages/*_page.rb')].each { |file| require file }

module PageObjects
    def home
        @home ||= HomePage.new
    end
    def unidades
        @unidades ||= UnidadesPage.new
    end
    def unidade_detalhes
        @unidade_detalhes ||= UnidadeDetalhesPage.new
    end 
end