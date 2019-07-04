class LoginScreen < Utils
    
    def initialize
        @email     = "userTextField"
        @password  = "passTextField"
        @enterButton = "loginButton"
        
        @alreadyClient = ''

        @firstPinBtn = "registerCode"
        @continuePinBtn = "continue"
        @bulletPin = "textRegisterPin"
        @finishPinBtn = "okButton"
        @skipAlertNotification = 'okButton'
    end

        def onboardSkip
            find_elements(:class,"XCUIElementTypeButton")[1].click
        end

        def appLogin(id, element)
            wait_for_element(@email)
            clear_fields(@email)
            send_keys_id(@email, 'g1@qa.com')
            wait_for_element(@password)
            clear_fields(@password)
            send_keys_id(@password, 'ps654321')
            click_id(@enterButton)
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
                wait_for_click(@finishPinBtn,10)
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
        #    sleep 5 
           wait_for_click(@skipAlertNotification, 15)
       end  
             
end    