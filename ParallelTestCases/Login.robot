*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://adactinhotelapp.com/


*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    LogIntoApplication
    Close Browser


*** Keywords ***
logIntoApplication
    Input Text    //input[@id="username"]    pradeep2000
    Input Password    //input[@id="password"]    CJ8S2F
    Click Element    //input[@type='Submit']
