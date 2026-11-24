*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
#Here we are creating user defined keywords with arguments & return value
launchBrowser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}


#Here we are creating user defined keywords with arguments
launchBrowserWithArguments
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window


#Here we are creating user defined keywords with no arguments
launchBrowserWithNoArguments
    Open Browser    https://adactinhotelapp.com/    chrome
    Maximize Browser Window