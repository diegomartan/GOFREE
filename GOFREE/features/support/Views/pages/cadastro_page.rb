

class CadastroPage
    include Capybara::DSL

    def open
        visit "/autenticacao/registro"
    end

    def create(user)
            
        find("#nomeInput").set user[:nome]
        find("#emailInput").set user[:email]
        find("#pwd").set user[:senha]

        find("#termsOfUse").click

        find("#criarConta").click

    end


end
