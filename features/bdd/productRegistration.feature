# language: pt

@regressao
Funcionalidade: Cadastrar produto
Cadastra produtos no app.


Cenario: Cadastrar um produto 
    Dado Que eu queira cadastrar um produto
    Quando Eu digitar os dados do produto
    Entao O produto deve ser cadastrado com sucesso

Cenario: Editar registro de produto
    Dado Que eu queira editar o cadastro de um produto ja cadastrado
    Quando Eu digitar os novos dados
    Entao As atualizações do produto deve ser atualizado com sucesso  

Cenario: Deletar um registro
    Dado Que eu queira deletar um registro cadastrado
    Quando Eu clicar no icone de deletar
    Entao O registro deve ser excluido    
