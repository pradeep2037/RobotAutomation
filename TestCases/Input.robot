*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    Chrome
${url}        https://adactinhotelapp.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Adactin.com - Hotel Reservation System    #Verifying title

    #if we want to assign anything to a variable inside the testcases use setvariable keyword but in variables section no need
    ${input_text}    Set Variable    //input[@id='username']

    Element Should Be Visible    ${input_text}
    Element Should Be Enabled    ${input_text}
    Input Text    ${input_text}    pradeep2000
    Click Element    //input[@type='Submit']



*** Keywords ***
