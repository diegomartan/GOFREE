#language: pt

Funcionalidade: Logar

    Sendo um usuário cadastrado
    Quero logar na página
    Para que eu possa criar eventos e comprar ingressos

    @login
    Cenario: Fazer login

        Dado que estou na página inicial
        Quando submeto minhas credencias com "dmartan13@gmail.com" e "123456"
        Então devo ser redirecionado para a pagina central do usuario

    @loginerro
    Esquema do Cenario: Tentar logar

        Dado que estou na página inicial
        Quando submeto minhas credencias com "<email_input>" e "<senha_input>"
        Então visualizo uma mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input         | senha_input | mensagem_output                                          |
            |                     | 123456      | E-mail inválido.                                         |
            | dmartan13@gmail.com |             | Senha inválida. A senha deve ter no mínimo 6 caracteres. |
            | dmart88@gmail.com   | 123456      | Usuário ou senha inválidos.                              |

