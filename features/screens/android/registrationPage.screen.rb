class RegistrationPage < Utils
  
    def initialize
        @code = 'txt_codigo'
        @description = 'txt_descricao'
        @packing = 'txt_unidade'  
        @amont = 'txt_quantidade'
        @unit = 'txt_valunit'
        @lot = 'txt_lote'
        @save = 'btn_gravar_assunto'
        @codeValue = Faker::Code.npi
        @descriptionValue = Faker::Coffee.blend_name
        @packingValue = Faker::Number.number
        @amontValue = Faker::Number.number
        @unitValue = Faker::Number.number
        @lotValue = Faker::Number.number
    end
    
  #Realiza um registro  
    def registrationProduct
      begin  
        wait_for_click(@code, 5)
        send_keys_id(@code, @codeValue)
        wait_for_click(@description, 5)
        send_keys_id(@description, @descriptionValue)
        wait_for_click(@packing, 5)
        send_keys_id(@packing, @packingValue)
        scroll_down()
        wait_for_click(@amont, 5)
        send_keys_id(@amont, @amontValue)
        wait_for_click(@unit, 5)
        send_keys_id(@unit, @unitValue)
        wait_for_click(@lot, 5)
        send_keys_id(@lot, @lotValue)
        wait_for_click(@save, 5)
      rescue
        raise "Atenção.. Algum dos campos de registro nāo encontrado"
      end  
    end    

end