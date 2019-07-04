class LoginScreen < Utils

    def initialize
        @email = 'input_email'
        @password = 'input_password'
        @enterButton = 'btn_login'
        @startBtn ='btn_continue_pin_register'
        @confirmButton = 'btn_pin_register_action'
        @sucessBtn = 'btn_pin_success'

        @alreadyClient = 'btn_signin'

        @firstPinBtn = 'btn_continue_pin_register'
        @PinBtn = 'btn_pin_register_action'
        @bulletPin = 'pinDummyEditText'
        @finishPinBtn = 'btn_pin_success'     
    end

    def onboardSkip
        wait_for_element(@alreadyClient)
        find_element(:id, @alreadyClient).click
    end

    def appLogin(id, element)
        wait_for_element(@email)
        clear_fields(@email)
        send_keys_id(@email, 'g1@qa.com')
        wait_for_element(@password)
        clear_fields(@password)
        send_keys_id(@password, 'ps654321')
        click_id(@enterButton)
    end
    
    def pinAccess
        wait_for_element(@firstPinBtn)
        click_id(@firstPinBtn)
        enter_text('989898', @bulletPin)
        wait_for_element(@PinBtn)
        click_id(@PinBtn)
        enter_text('989898', @bulletPin)
        wait_for_element(@PinBtn)
        click_id(@PinBtn)
        wait_for_element(@finishPinBtn)
        click_id(@finishPinBtn)
    end    
end