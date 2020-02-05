Dado("Que eu queira cadastrar um produto") do
  home.newRegistration
end

Dado("Que eu queira editar o cadastro de um produto ja cadastrado") do
  home.newRegistration
  registration.registrationProduct
  home.updateRegistration
end

Dado("Que eu queira deletar um registro cadastrado") do
  home.newRegistration
  registration.registrationProduct
end
  
Quando("Eu digitar os dados do produto") do
  registration.registrationProduct
end
  
Quando("Eu digitar os novos dados") do
  registration.registrationProduct
end

Quando("Eu clicar no icone de deletar") do
  home.deleteRegistration
end
  
Entao("O produto deve ser cadastrado com sucesso") do
  home.checkProductRegistration 
end

Entao("As atualizações do produto deve ser atualizado com sucesso") do
  home.checkProductRegistration
end

Entao("O registro deve ser excluido") do
  home.checkProductIsDeleted
end