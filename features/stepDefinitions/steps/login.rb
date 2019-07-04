Dado("Um usuario vendedor faça um login.") do
    login.onboardSkip
end

Quando("O usuario digitar email e senha e clicar em entrar.") do
    login.appLogin(@email, @senha)
    login.pinAccess
end

Entao("O usuario ira acessar a home do app.") do
    home.checkLoginSuccessfull
end    