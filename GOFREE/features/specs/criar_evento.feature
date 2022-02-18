#language: pt

Funcionalidade: Criar eventos
    Sendo eu um usuário logado
    Quero criar um evento
    Para que usuários possam comprar ingressos

    @evento
    Cenario: Criar evento presencial
        Dado que estou logado com "dmartan13@gmail.com" e "123456"
            E clico no botão de criar evento
            E preencho os seguintes campos
            | tipoDeEvento          | evento presencial                                                               |
            | nomeDoEvento          | EVENTO TESTE 01   AUTO                                                          |
            | categoriaDoEvento     | Eventos Esportivos                                                              |
            | dataInicio            | 26042022                                                                        |
            | horaInicio            | 1800                                                                            |
            | dataTermino           | 26042022                                                                        |
            | horaTermino           | 2300                                                                            |
            | descricaoDoEvento     | EVENTO TESTE 01 AUTO                                                            |
            | banerDoEvento         | reuniao.png                                                                     |
            | nomeclaturaDoIngresso | ingresso                                                                        |
            | enderecoOuNomeDoLocal | R. Francisco Soucasseaux, 54 - Lagoinha, Belo Horizonte - MG, 31110-310, Brasil |
            | nomeDoLocal           | gofree                                                                          |
            E clico em Adcionar ingresso e preencho os seguintes campos
            | nomeDoIngresso       | ingresso teste gratuito |
            | tipoDeIngresso       | gratuito                |
            | quantidadeDeIngresso | 100                     |
            | minimoPorPessoa      | 1                       |
            | maximoPorPessoa      | 2                       |
            | descricaoDoIngresso  | ingresso teste gratuito |
            E clico em adionar ingresso
        Quando clico em publicar evento
        Então devo receber uma mensagem de confirmação





