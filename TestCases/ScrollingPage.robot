*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#scrolling page till it reach a pixel number
#scrolling page till find element on page
#scrolling page till the bottom

*** Test Cases ***
TestingScrollingTillItReachesPixelNumber
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    Maximize Browser Window
    Sleep    1s
    Execute Javascript    window.scrollTo(0,1500)
    #1st parameter is for horizontal scrolling
    #2nd parameter is for vertical scrolling
    Sleep    2s


TestingScrollingTillElementIsVisible
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    Maximize Browser Window
    Sleep    1s
    Scroll Element Into View    //td[text()='Mongolia']
    Sleep    2s

TestingScrollingTillTheBottom
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    Maximize Browser Window
    Sleep    1s
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #Will go end of the page
    Sleep    1s
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #Will go start of the page
    Sleep    1s

*** Keywords ***
