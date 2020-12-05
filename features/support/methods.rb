require 'tmpdir'
require 'fileutils'

# evidence for hooks (report)
def obter_evidencia
    caminho_pasta = "result/screenshots"
    FileUtils.mkdir_p caminho_pasta unless checar_pasta_existe(caminho_pasta)
    nome_arquivo = SecureRandom.urlsafe_base64
    $screenshot = "#{caminho_pasta}/#{nome_arquivo}.png"
    page.save_screenshot($screenshot)
    attach(File.read($screenshot), 'image/png')
end

# focuses on the designed object
def foco(obj)
    obj.hover
end

# clean folder
def limpar_pasta(pasta)
    Dir.entries(pasta).select {|f| !File.directory? f}.each do |file_name|
        File.delete "#{pasta}/#{file_name}"
    end
end

# check empty folder
def checar_pasta_vazia(pasta)
	extensoes_ignoradas = [".rb"]
    Dir[File.join(pasta, '**', '*')].select { |file| next if extensoes_ignoradas.include?(File.extname(file)).count ; File.file?(file) } >= 1 ? false : true
end

# check if folder already exists
def checar_pasta_existe(pasta)
    unless Dir.exist?(pasta)
		return false
	else
		return true
    end
end