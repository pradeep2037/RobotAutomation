*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot


*** Variables ***


*** Test Cases ***
TC1
    LaunchBrowserWithNoArguments
    Input Text    //input[@id="username"]    pradeep2000
    Input Password    //input[@id="password"]    CJ8S2F
    Click Element    //input[@type='Submit']

*** Keywords ***



