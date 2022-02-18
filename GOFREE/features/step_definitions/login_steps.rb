Dado('que estou na página inicial') do
    @login_page.open
end
  
Quando('submeto minhas credencias com {string} e {string}') do |email, password|

    @login_page.with(email, password)

end
  


