*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}    https://practice.expandtesting.com/dropdown
${browser}    chrome

*** Test Cases ***
Handling Dropdown using Select By Label
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Label    //select[@id='country']    China  #label means the value which we see in UI
    Sleep    3s

Handling Dropdown using Select By Value
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Value    //select[@id='country']    IN
    Sleep    3s

Handling Dropdown using Select By Index
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Index   //select[@id='country']    1
    Sleep    3s

*** Keywords ***


