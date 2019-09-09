class HomeScreen < Utils

    def initialize
        @pagBankIcon = 'custom_toolbar_menu_icon'
        @balanceValue = 'text_balance_value'
        @receivedValue = 'text_receivable_value'  
        @balanceDetailsLink = 'text_balance_details'
    end
    attr_accessor :balanceValue, :balanceDetailsLink, :receivedValue, :pagBankIcon
end