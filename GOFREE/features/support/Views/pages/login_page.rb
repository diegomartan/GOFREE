

class LoginPage

    include Capybara::DSL

    def open
        visit "/autenticacao/login"
    end

    def with(email, password)
        find("#emailInput").set email
        find("#senhaInput").set password
        click_button "Entrar"
    end
end