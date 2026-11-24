*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://adactinhotelapp.com/
${browser}    chrome

*** Keywords ***
open my browser
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
close browsers
    Close All Browsers
    
Enter Username
    [Arguments]    ${username}
    Input Text    //input[@id='username']    ${username}
Enter Password
    [Arguments]    ${password}
    Input Text    //input[@id='password']    ${password}
Click Login Button
    Click Element    //input[@id='login']

Error Message Should Be Visible
    Wait Until Element Is Visible    //div[@class='auth_error']/child::b
    ${errorMessage}    Get Text    //div[@class='auth_error']/child::b
    Page Should Contain    ${errorMessage}

Successful Message Should Be Visible
    ${title}    Get Title
    Page Should Contain    ${title}


