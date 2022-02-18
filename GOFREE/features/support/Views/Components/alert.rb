

class Alert 
    include Capybara::DSL

    def dark_login
       return page.has_css?("#emailError")
       return page.has_css?("#senhaInvalida")
       return page.has_css?("#loginError")
    end

    def dark_cadastro
        return page.has_css?("#errorSignUp")
        return page.has_css?("#nomeError")
        return page.has_css?("#emailError")
        return page.has_css?("#senhaError")
    end
   

end
