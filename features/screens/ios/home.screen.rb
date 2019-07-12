class HomeScreen < Utils

    def initialize
        @pagBankIcon = 'pagBankIcon'
        @balanceLabel = 'balanceLabel'
        @blockedLabel = 'blockedLabel'
        @receivedLabel = 'receivedLabel'  
    end
    attr_accessor :balanceLabel, :blockedLabel, :receivedLabel, :pagBankIcon
end