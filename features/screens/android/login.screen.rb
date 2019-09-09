class LoginScreen < Utils

    def initialize
        @emailField = 'input_email'
        @passwordField = 'input_password'
        @enterButton = 'btn_login'

        @startBtn ='btn_continue_pin_register'
        @confirmButton = 'btn_pin_register_action'
        @sucessBtn = 'btn_pin_success'

        @alreadyClient = 'btn_signin'

        @firstPinBtn = 'btn_continue_pin_register'
        @continuePinBtn = 'btn_pin_register_action'
        @bulletPin = 'pinDummyEditText'
        @finishBtn = 'btn_pin_success'
        
        @blockedScreen = 'title'
        @blockedScreenConfirmButton = 'confirmButton'

        @okPaidAccount = 'btn_done'
    end

    attr_accessor :emailField, :passwordField, :enterButton, :blockedScreen, :blockedScreenConfirmButton

    def onboardSkip
        wait_for_element(@alreadyClient)
        find_element(:id, @alreadyClient).click
    end

    def pinAccess
        wait_for_element(@firstPinBtn)
        click_id(@firstPinBtn)
        2.times {
        enter_text('989898', @bulletPin)
        wait_for_element(@continuePinBtn)
        click_id(@continuePinBtn)
        }
        wait_for_element(@finishBtn)
        click_id(@finishBtn)
    end    

    def paidAccount
        wait_for_element(@okPaidAccount)
        click_id(@okPaidAccount)
    end    
end