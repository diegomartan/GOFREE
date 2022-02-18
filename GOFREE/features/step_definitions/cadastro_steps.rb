Dado('que eu acesso a pagina de cadastro') do
    @cadastro_page.open
end
  
Quando('submeto o seguinte formulário de cadastro') do |table|

    user = table.hashes.first
    
    @cadastro_page.create(user)
end
  
Entao('recebo uma mensagem de confirmação de cadastro') do
    @alert.dark_cadastro
end

Entao('vejo uma mensagem de alerta: {string}') do |string|
    @alert.dark_cadastro
end

