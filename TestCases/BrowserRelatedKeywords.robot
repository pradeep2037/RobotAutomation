*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Navigation Test
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    Go To    https://www.bing.com/?toWww=1&redig=239FB90D9CBF434997525FFECDB648E9
    Go Back
    Sleep    1s

*** Keywords ***
