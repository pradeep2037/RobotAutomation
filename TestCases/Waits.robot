#SeleniumSpeed
#SeleniumTimeout
#ImplicitWait
#Sleep
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
Testing Selenium Speed
    
    ${seleniumSpeed} =    Get Selenium Speed
    Log To Console    ${seleniumSpeed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1s    #if you want to execute the each step 3s delay use this By default time is 0
    Select Radio Button    Gender    M
    Input Text    //input[@id='FirstName']    pradeep
    Input Text    //input[@id='LastName']    levaku
    Input Text    //input[@id='Email']    levakupradeepkumar@gmail.com
    Input Text    //input[@id='Password']    January@25p
    Input Text    //input[@id='ConfirmPassword']    January@25p
    ${seleniumSpeed} =    Get Selenium Speed
    Log To Console    ${seleniumSpeed}
    Close Browser

Testing Wait Until Page...
    
#    ${defaultTimeOut} =     Get Selenium Timeout
#    Log To Console    ${defaultTimeOut} 

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
#   Set Selenium Timeout    10s    you can use this timeout for all wait for timeouts
    Wait Until Page Contains    Register         #Wait until for this text appears in the page. By Default time is 5s. If you uncomment above line it wait for 10s.
    Select Radio Button    Gender    M
    Input Text    //input[@id='FirstName']    pradeep
    Input Text    //input[@id='LastName']    levaku
    Input Text    //input[@id='Email']    levakupradeepkumar@gmail.com
    Input Text    //input[@id='Password']    January@25p
    Input Text    //input[@id='ConfirmPassword']    January@25p
    Close Browser

Testing Implicit Wait
    
    ${defaultImplicitWait} =    Get Selenium Implicit Wait
    Log To Console    ${defaultImplicitWait}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s    #By default time is 0s
    Select Radio Button    Gender    M
    Input Text    //input[@id='FirstName']    pradeep
    Input Text    //input[@id='LastName']    levaku
    Input Text    //input[@id='Email']    levakupradeepkumar@gmail.com
    Input Text    //input[@id='Password']    January@25p
    Input Text    //input[@id='ConfirmPassword']    January@25p
    Close Browser

*** Keywords ***
