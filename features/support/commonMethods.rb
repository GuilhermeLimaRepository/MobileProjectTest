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
        @appHomeCheck = HomeScreen.new
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.balanceValue ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.balanceDetailsLink ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.receivedValue ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.pagBankIcon ,5)
    end    
    
    def checkLoginIsBlocked
        @appLoginBlocked = LoginScreen.new
        @appLoginBlocked.wait_for_element_exist?(@appLoginBlocked.blockedScreen ,5)
        @appLoginBlocked.click_id(@appLoginBlocked.blockedScreenConfirmButton)
        @appLoginBlocked.wait_for_element_exist?(@appLoginBlocked.emailField ,5)
        @appLoginBlocked.wait_for_element_exist?(@appLoginBlocked.passwordField ,5)
    end    

    def confirmPaidAccount
        @appConfirmPaidAccount = LoginScreen.new
        @appConfirmPaidAccount.wait_for_element(@appConfirmPaidAccount.okPaidAccount)
        @appConfirmPaidAccount.click_id(@appConfirmPaidAccount.okPaidAccount)
    end  

end