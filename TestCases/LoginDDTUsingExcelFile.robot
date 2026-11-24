*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginResources.robot
Library    DataDriver    ../TestData/Book.xlsx    sheet_name=Sheet1
Library    ExcelLibrary
Suite Setup    Open My Browser
Suite Teardown    Close All Browsers
Test Template    Invalid Login

*** Test Cases ***
LoginTestWithExcel    ${username}    ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Enter Username      ${username}
    Enter Password      ${password}
    Click Login Button
    Error Message Should Be Visible

