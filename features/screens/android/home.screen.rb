class HomeScreen < Utils

    def initialize
        @pagBankIcon = 'custom_toolbar_menu_icon'
        @balanceLabel = 'tv_lbl_balance'
        @blockedLabel = 'blocked_label'
        @receivedLabel = 'receive_label'  
    end
    
    def checkLoginSuccessfull
        sleep 5
        find_element(:id, @pagBankIcon).displayed?
        find_element(:id, @balanceLabel).displayed?
        find_element(:id, @blockedLabel).displayed?
        find_element(:id, @receivedLabel).displayed?
    end    
end