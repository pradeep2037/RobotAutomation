*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#To perform right click use Open Context Menu
*** Test Cases ***
Testing RightClick

    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    Open Context Menu    //span[text()='right click me']
    Sleep    2s


Testing DoubleClick

    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window    
    Wait Until Element Is Visible    //button[text()='Copy Text']
    Double Click Element    //button[text()='Copy Text']
    Sleep    2s

Testing Drag And Drop

    Open Browser    https://jqueryui.com/droppable/    chrome
    Maximize Browser Window
    Select Frame    //iframe[contains(@src,'/resources/demos/droppable')]
    Drag And Drop    //div[@id='draggable']    //div[@id='droppable']
    Sleep    2s

    
    
    

*** Keywords ***
