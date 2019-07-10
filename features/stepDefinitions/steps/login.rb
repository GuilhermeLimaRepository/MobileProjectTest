Dado("Um usuario vendedor faça um login.") do
    login.onboardSkip
end

Quando("O usuario digitar email e senha e clicar em entrar.") do
    commonMethods.appLogin(@email, @password, @credentials)
    login.pinAccess
end

Entao("O usuario ira acessar a home do app.") do
    commonMethods.checkLoginSuccessfull
end    