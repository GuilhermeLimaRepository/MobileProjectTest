class CommonMethods < Utils

    def appLogin(emailField, passwordField, email, password)
        @appLogin = LoginScreen.new
        @appLogin.wait_for_element(@appLogin.emailField)
        @appLogin.clear_fields(@appLogin.emailField)
        @appLogin.send_keys_id(@appLogin.emailField, email)
        @appLogin.wait_for_element(@appLogin.passwordField)
        @appLogin.clear_fields(@appLogin.passwordField)
        @appLogin.send_keys_id(@appLogin.passwordField, password)
        @appLogin.click_id(@appLogin.enterButton)
    end

    def checkLoginSuccessfull
        sleep 5
        @appHomeCheck = HomeScreen.new
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.balanceLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.blockedLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.receivedLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.pagBankIcon ,5)
    end    
    
end