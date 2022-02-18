#language: pt

Funcionalidade: Cadastro
    Sendo um usuário comum
    Quero fazer meu cadastro na GOFREE
    Para que possa criar eventos e comprar ingressos

    @cadastro
    Cenario: Fazer cadastro

        Dado que eu acesso a pagina de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome         | email               | senha  |
            | Diego Martin | dmartan13@gmail.com | 123456 |
        Entao recebo uma mensagem de confirmação de cadastro

    @cad
    Esquema do Cenario: Tentadiva de cadastro
        Dado que eu acesso a pagina de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Entao vejo uma mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input   | email_input         | senha_input | mensagem_output                                                                    |
            |              | dmartan13@gmail.com | 123456      | Nome inválido.                                                                     |
            | Diego Martin |                     | 123456      | E-mail inválido.                                                                   |
            | Diego Martin | dmartan13@gmail.com |             | Senha inválida. A senha deve ter no mínimo 6 caracteres.                           |
            | Diego Martin | dmartan13#gmail.com | 123456      | E-mail inválido.                                                                   |
            | Diego Martin | dmartan13@gmail.com | 123456      | Não é possível concluir o cadastro. Este e-mail já está vinculado à outro usuário. |



