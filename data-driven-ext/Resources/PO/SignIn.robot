*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${SIGN_IN_EMAIL} =      xpath=//input[@ng-model='credentials.email']
${SIGN_IN_PASSWORD} =    xpath=//input[@ng-model='credentials.password']
${LOGIN_SUBMIT_BUTTON} =    Log In

*** Keywords ***
Navigate To
    ${SignInUrl} =    Catenate