#1
Dado("Que eu seja usuário do tipo {string}") do |string|
    login.onboardSkip
  end

#1
Quando("Eu finalizar o login com as credenciais {string} e cadastrar o codigo Pin") do |user|
    commonMethods.appLogin(@emailField, @passwordField, user, CREDENTIALS[:standardPassword])
    login.pinAccess
end

# O resultado dos cenarios serāo o mesmo.
Entao("Devo me encontrar na home do app") do
    commonMethods.checkLoginSuccessfull
end

Dado("Que meu usuario esteja bloqueado") do
    login.onboardSkip
end

Quando("Eu finalizar o login") do
    commonMethods.appLogin(@emailField, @passwordField, CREDENTIALS[:blockedUser], CREDENTIALS[:standardPassword])
end

Entao("Tela de usuario bloqueado deve aparecer") do
    commonMethods.checkLoginIsBlocked
end