Dado("Que eu queira cadastrar um produto") do
     home.newRegistration
  end
  
  Quando("Eu digitar os dados do produto") do
    registration.registrationProduct
  end
  
  Entao("O produto deve ser cadastrado com sucesso") do
      home.checkProductRegistration 
  end