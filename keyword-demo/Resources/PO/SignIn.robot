*** Variable ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Wait Sign-In title
    Wait Until Page Contains     ${SIGNIN_MAIN_HEADING}

Click Create Amazon account
    Click Link  Link=Create your Amazon account

