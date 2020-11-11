*** Settings ***
Library     SeleniumLibrary

*** Variable ***

*** Keywords ***
Test Multiple Login Scenarios
    [Arguments]     ${Credentials}
    Navigate to Sing In Page
    Attempt Login     ${Credentials}
    Verify Login Page Error Message    ${Credentials.ExpectedErrorMessage}


Navigate to Sing In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]    ${Credentials}
    SignIn.Enter Credentials    ${Credentials}
    SignIn.Click Submit
    Sleep    1s

Verify Login Page Error Message
    [Arguments]    ${ExpectedErrorMessage}
    SignIn.Verify Error Message    ${ExpectedErrorMessage}
