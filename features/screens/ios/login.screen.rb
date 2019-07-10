class LoginScreen < Utils
    
    def initialize
        @email     = "userTextField"
        @password  = "passTextField"
        @enterButton = "loginButton"
        
        @alreadyClient = ''

        @firstPinBtn = "registerCode"
        @continuePinBtn = "continue"
        @bulletPin = "textRegisterPin"
        @finishBtn = "okButton"
    end

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
            sleep 0.4
            3.times{
                find_element(name: '8').click
                find_element(name: '9').click
            }
        end

       def skipAlertNotification
           wait_for_click(@finishBtn, 15)
       end  
             
end    