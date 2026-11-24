*** Settings ***
Library    SeleniumLibrary

#$ represents single value
#@ represents multiple values

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://adactinhotelapp.com/    chrome
    Maximize Browser Window
    @{links}    Get Webelements    //a
    ${linkCount}    Get Element Count    //a
    Log To Console    ${linkCount}
    
    FOR    ${i}    IN     @{links}
        ${text}    Get Text    ${i}
        Log To Console    ${text}
    END


*** Keywords ***
