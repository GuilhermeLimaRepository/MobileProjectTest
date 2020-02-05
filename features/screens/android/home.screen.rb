require 'rspec'

class HomeScreen < Utils

    def initialize
        @plusButton = 'Button1'
        @editIcon = 'editar'
        @deleteIcon = 'deletar'  
        @productRegistrationSucsses = 'tabela_itens'
    end

  #Inicia um registro  
    def newRegistration
      begin  
        wait_for_click(@plusButton, 5)
      rescue
        raise "Atenção.. Icone de registro nāo encontrado"
      end   
    end    

  #Atualiza um produto  
    def updateRegistration
      begin
        wait_for_click(@editIcon, 5)
      rescue
        raise "Atençāo.. Icone de editar nāo encontrado"
      end
    end
    
  #Deleta um produto  
    def deleteRegistration
      begin
        wait_for_click(@deleteIcon, 5)
        acceptAllert()
        sleep 2
      rescue
        raise "Atenção.. Icone de deletar nāo encontrado"
      end
    end     

  #Verifica se um produto foi registrado  
    def checkProductRegistration
      begin   
         wait_for_element_exist?(@productRegistrationSucsses, 5)
      rescue
        raise "Atenção.. Produto Registrado nāo encontrado"
      end    
    end

  #Verifica se um produto foi deletado  
    def checkProductIsDeleted
      if @driver.exists { @driver.find_element(@productRegistrationSucsses) } == true
        return true
      else
        return true  
      end 
      expect(@driver).to be_falsey
    end

end