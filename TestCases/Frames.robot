*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://app.thetestingacademy.com/playwright/frames/
${browser}    chrome

*** Test Cases ***
#select frame by ID
#select frame by Name
#select frame by xPath

Testing Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Scroll Element Into View    //iframe[@id='frame-one']
    Select Frame    //iframe[@id='frame-one']
    Input Text    //input[@name='vehicleName']    pradeep
    Sleep    10s


*** Keywords ***
