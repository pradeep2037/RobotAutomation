*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
TC1 User RegistrationTest
    [Tags]    sanity
    Log To Console    This is user register test
TC2 User LoginTest
    [Tags]    sanity
    Log To Console    This is user login test
TC3 Change User Settings
    [Tags]    regression
    Log To Console    This is change user settings
TC4 Logout Test
    [Tags]    regression
    Log To Console    Logout test