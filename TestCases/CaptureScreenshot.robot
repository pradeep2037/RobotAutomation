*** Settings ***
Library    SeleniumLibrary

#If we don't give any location by default it save inside project level
*** Test Cases ***
Testing ScreenShot
    
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    //div[@class='orangehrm-login-branding']
    Capture Element Screenshot    //div[@class='orangehrm-login-branding']    C:/Users/prade/PycharmProjects/AutomationProject/logo.png
    Capture Page Screenshot    C:/Users/prade/PycharmProjects/AutomationProject/logoTc.png

    
