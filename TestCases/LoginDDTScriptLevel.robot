*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginResources.robot
Suite Setup    Open My Browser
Suite Teardown    Close All Browsers
Test Template    Invalid Login

*** Test Cases ***
valid username invalid password    pradeep2000    ioii
invalid username valid password    prad    CJ8S2F
invalid username invalid password    prad    CJ8

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    Error Message Should Be Visible  