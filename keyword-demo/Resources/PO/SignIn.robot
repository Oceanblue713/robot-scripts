*** Variable ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Login With Valid Credentials
    [Arguments]   ${Username}   ${Password}
    Fill "Email" Field   ${Username}
    Click "Continue" Button

Fill "Email" Field
    [Arguments]   ${Username}
    Log Filling Email field with  ${Username}

Fill "Password" Field]
    [Arguments]   ${Password}
    
Click "Continue" Button
    Log   Clicking submit button

Wait Sign-In title
    Wait Until Page Contains     ${SIGNIN_MAIN_HEADING}

Click Create Amazon account
    Click Link  Link=Create your Amazon account

