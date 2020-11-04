*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${LANDING_HEADING} =    xpath=//h1

*** Keywords ***
Navigate To
    Go To    ${URL.${ENVIRONMENT}}

Verify Page Landed
    wait until page contains element    ${LANDING_HEADING}