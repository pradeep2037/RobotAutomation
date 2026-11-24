#//table[@id='customers']/child::tbody

*** Settings ***
Library    SeleniumLibrary


*** Variables ***



*** Test Cases ***
Testing WebTables
    Open Browser    https://www.qafeast.com/demo?utm_source=chatgpt.com    chrome
    Maximize Browser Window
    Click Element    //label[text()='Webtable']

    @{rows}    Get Webelements    //tbody/child::tr
    ${elementsCount}    Get Element Count    //tbody/child::tr
    Log To Console    ${elementsCount}

    FOR    ${i}    IN    @{rows}
        @{columns}    ${i}    Get Webelements    //td
        FOR    ${j}    IN    @{columns}
            ${data}    Get Text    ${j}
            Log To Console    ${data}
        END
    END

