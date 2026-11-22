*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://adactinhotelapp.com/


*** Test Cases ***
Testing Radio Buttons

    Open Browser    https://practice.expandtesting.com/radio-buttons    chrome
    Maximize Browser Window
    Scroll Element Into View    //label[text()='Green']
#   ---------------------------------------------------------------------
    Sleep    5s
    #both will work
    Click Element     //label[text()='Red']
    Select Radio Button    color    yellow       #taking name & value
#   ---------------------------------------------------------------------

Testing Check Boxes
    Open Browser    https://practice.expandtesting.com/checkboxes    chrome
    Maximize Browser Window
    Scroll Element Into View    //label[@for='checkbox1']
    Click Element    //label[@for='checkbox1']
    Unselect Checkbox     checkbox2
    Sleep    2s

*** Keywords ***
