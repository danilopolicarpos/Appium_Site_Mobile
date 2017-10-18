Dado('que estou na página do Google') do
  @home = Home.new
  @home.homepage
end

Quando('realizar uma pesquisa') do
  @home.realizar_busca
end

Entao('vejo resultados da pesquisa') do
  @home.resultado_busca
end
