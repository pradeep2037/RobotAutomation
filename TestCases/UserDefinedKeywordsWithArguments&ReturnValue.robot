*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://adactinhotelapp.com/ 
${browser}    chrome

*** Test Cases ***
TC1
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    Log To Console   ${PageTitle}
    Input Text    //input[@id="username"]    pradeep2000
    Input Password    //input[@id="password"]    CJ8S2F
    Click Element    //input[@type='Submit']




