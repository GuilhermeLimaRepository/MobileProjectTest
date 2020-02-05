# Class Base

class Utils

    #Método para esperar um elemento mapeado estar visível na tela por xpath durante 10s. 
      def wait_for_xpath(xpath)
        wait = Selenium::WebDriver::Wait.new timeout: 10
        @driver.exists { @driver.find_element(:xpath, xpath) }
      end
      
          #Método que estava sendo utilizando no antigo element_helpers 
      def wait_for_element(identifier)
        wait = Selenium::WebDriver::Wait.new timeout: 10
        begin
          wait.until { find_element(id: identifier).displayed? }
        rescue
          false
        end
      end
    
    #Método para esperar um elemento mapeado estar visível na tela
      def wait_for_element_exist?(attribute,timeout)
        wait = Selenium::WebDriver::Wait.new timeout: timeout        
        wait.until { find_element(id: attribute).displayed? }
      end

    #Limpa campos passando id  
      def clear_fields(id)
        @driver.find_element(:id, id).clear
      end  

    #Limpa campos passando xpath  
      def clear_fields_for_xpath(xpath)
        @driver.find_element(:xpath, xpath).clear
      end  

    #Método para clicar um elemento mapeado na tela por id.
      def click_id(id)
        @driver.find_element(:id, id).click
      end
    
    
    #Método para clicar um elemento mapeado na tela por xpath.
      def click_xpath(xpath)
        @driver.find_element(:xpath, xpath).click
      end

    #Metodo espera o elemento aparecer recebendo um valor de timeout, e clica no mesmo.  
      def wait_for_click(attribute,timeout)
        wait_for_element_exist?(attribute,timeout)
        find_element(id: attribute).click
      end
    
    #Método para preencher um campo mapeado na tela por id.
      def send_keys_id(id, field)
        @driver.find_element(:id, id).send_keys(field)
      end

        #Método para preencher um campo mapeado na tela por xpath.
      def send_keys_xpath(xpath, field)
          @driver.find_element(:xpath, xpath).send_keys(field)
      end

    #Escreve textos somente android
      def enter_text(text, element)
          wait = Selenium::WebDriver::Wait.new timeout: 30
          wait.until { find_element(:id, element).send_keys text }
      end
  
    #Realiza swipe na tela  
      def scroll_down
        swipe(start_y: 700, end_y: 400, duration: 250)
      end
      
    #aceita alertas  
      def acceptAllert
        @driver.switch_to.alert.accept()
      end  

  end
