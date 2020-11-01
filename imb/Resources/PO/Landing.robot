*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${LANDING_HEADING} =    xpath=//h1

*** Keywords ***
Navigate To
    Go To    ${URL.${ENVIRONMENT}}

Verify Page Landed
    element text should be    ${LANDING_HEADING}    Welcome!