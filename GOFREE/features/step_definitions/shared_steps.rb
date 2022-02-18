Então('devo ser redirecionado para a pagina central do usuario') do
    
    expect(page).to have_css "#banner-central"
end


Então('visualizo uma mensagem de alerta: {string}') do |expect_alert|              
    
    @alert.dark_login
    
end     

