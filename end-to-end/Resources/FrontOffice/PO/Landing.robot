*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${LANDING_NAVIGATION_ELEMEMT} =    id=mainNav

*** Keywords ***
Navigate To
    go to    ${URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMEMT}