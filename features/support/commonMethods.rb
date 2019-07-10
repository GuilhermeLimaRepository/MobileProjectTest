class CommonMethods < Utils

    def appLogin(id, element, credentials)
        @appLogin = LoginScreen.new
        @appLogin.wait_for_element(@appLogin.email)
        @appLogin.clear_fields(@appLogin.email)
        @appLogin.send_keys_id(@appLogin.email, 'g1@qa.com')
        @appLogin.wait_for_element(@appLogin.password)
        @appLogin.clear_fields(@appLogin.password)
        @appLogin.send_keys_id(@appLogin.password, 'ps654321')
        @appLogin.click_id(@appLogin.enterButton)
    end

    def checkLoginSuccessfull
        @appHomeCheck = HomeScreen.new
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.balanceLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.blockedLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.receivedLabel ,5)
        @appHomeCheck.wait_for_element_exist?(@appHomeCheck.pagBankIcon ,5)
    end    

end