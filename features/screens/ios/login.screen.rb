class LoginScreen < Utils
    
    def initialize
        @emailField     = "userTextField"
        @passwordField  = "passTextField"
        @enterButton = "loginButton"
        
        @alreadyClient = ''

        @firstPinBtn = "registerCode"
        @continuePinBtn = "continue"
        @bulletPin = "textRegisterPin"
        @finishBtn = "okButton"

        @okPaidAccount = "confirmPaidAccountButton"

        #@blockedScreen = ''
        #@blockedScreenConfirmButton = ''
    end

    attr_accessor :emailField, :passwordField, :enterButton, :blockedScreen, :blockedScreenConfirmButton, :okPaidAccount

        def onboardSkip
            find_elements(:class,"XCUIElementTypeButton")[1].click
        end

        def pinAccess
            begin
                wait_for_element(@firstPinBtn).click
            rescue
                wait_for_click(@firstPinBtn,1)
                2.times{
                    pinRegistration
                    wait_for_click(@continuePinBtn,15)
                }
                wait_for_click(@finishBtn,10)
                skipAlertNotification
            end
        end   
        
        def pinRegistration
            sleep 1
            3.times{
                find_element(name: '8').click
                find_element(name: '9').click
            }
        end

       def skipAlertNotification
           wait_for_click(@finishBtn, 15)
       end  
             
end    