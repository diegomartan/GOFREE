Dado('que estou logado com {string} e {string}') do |email, password|    
    visit "/autenticacao/login"
    
    find("#emailInput").set email
    find("#senhaInput").set password

    click_button "Entrar"
    
    expect(page).to have_css "#banner-central"

    
end                                                                           
                                                                                
Dado('clico no botão de criar evento') do                                     
    
    click_link 'Criar evento'
    
end                                                                           
                                                                                
Dado('preencho os seguintes campos') do |table|                               
    @evento = table.rows_hash

    find("input[value=Presential]").click
    find("#nomeEvento").set @evento[:nomeDoEvento]
    find("#categoriaEvento").find('option', text: @evento[:categoriaDoEvento]).select_option
    find("#start-date").set @evento[:dataInicio]
    find("#start-hour").set @evento[:horaInicio]
    find("#endDate").set @evento[:dataTermino]
    find("#endHour").set @eveto[:horaTermino]
    find("div[role='textbox']")[:descricaoDoEvento]

    sleep 5
end                                                                           
                                                                                
Dado('clico em Adcionar ingresso e preencho os seguintes campos') do |table|  
    # table is a Cucumber::MultilineArgument::DataTable                         
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                                
Dado('clico em adionar ingresso') do                                          
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                                
Quando('clico em publicar evento') do                                         
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                                
Então('devo receber uma mensagem de confirmação') do                          
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           