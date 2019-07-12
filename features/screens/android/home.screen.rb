class HomeScreen < Utils

    def initialize
        @pagBankIcon = 'custom_toolbar_menu_icon'
        @balanceLabel = 'tv_lbl_balance'
        @blockedLabel = 'blocked_label'
        @receivedLabel = 'receive_label'  
    end
    attr_accessor :balanceLabel, :blockedLabel, :receivedLabel, :pagBankIcon
end