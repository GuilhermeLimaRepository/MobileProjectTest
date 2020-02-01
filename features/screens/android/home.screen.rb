class HomeScreen < Utils

    def initialize
        @plusButton = 'Button1'
        @serchBar = 'search_plate'
        @deleteIcon = 'deletar'  
        @productRegistrationSucsses = 'tabela_itens'
    end

    def newRegistration
      begin  
        wait_for_click(@plusButton, 5)
      rescue
        raise "Atenção.. Icone de registro nāo encontrado"
      end   
    end    

    def checkProductRegistration
      begin   
         wait_for_element_exist?(@productRegistrationSucsses, 5)
      rescue
        raise "Atenção.. Produto Registrado nāo encontrado"
      end    
    end    
    
end