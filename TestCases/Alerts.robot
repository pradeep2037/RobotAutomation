*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
Testing Alerts
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    //button[@id='confirmBtn']
    Sleep    1s
#    Handle Alert    accept
#    Handle Alert    dismiss
#    Handle Alert    leave    to wait like that for some time

    Alert Should Be Present    Press a button!
    Sleep    1s

*** Keywords ***
