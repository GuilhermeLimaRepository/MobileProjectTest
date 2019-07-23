# language: pt
@testesLogin
Funcionalidade: Tela de Login
Validar cenarios do fluxo de login do app com todos os tipos de usuarios do app.
Ao fim do fluxo todos os usuarios devem se encontrar na tela da home do app com exceçāo do bloqueado.

Esquema do Cenario: Login com sucesso com diferentes tipos de usuários do aplicativo PagBank
    Dado Que eu seja usuário do tipo "<usuario>"
    Quando Eu finalizar o login com as credenciais "<credenciais>" e cadastrar o codigo Pin
    Entao Devo me encontrar na home do app

Exemplos:
  |usuario     |credenciais                       |
  |Vendedor    |g1@qa.com                         |
  |Comprador   |kamila_compradora@mailinator.com  |
  |Empresarial |empresarial@edimburgo.com         |
  |Secundario  |tonny@testeapp.com                |
  |Standard    |l1@qa.com                         |

  # Cenario: Login com usuario bloqueado
  # Dado Que meu usuario esteja bloqueado
  # Quando Eu finalizar o login
  # Entao Tela de usuario bloqueado deve aparecer