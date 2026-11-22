*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Windows.html
${browser}    chrome

*** Test Cases ***
Testing Multiple Windows
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    (//button[@class='btn btn-info'])[1]
    Click Element    (//button[@class='btn btn-info'])[1]
    Switch Window    Selenium
    Click Element    (//a[contains(@href,'/documentation/web')])[1]


*** Keywords ***
