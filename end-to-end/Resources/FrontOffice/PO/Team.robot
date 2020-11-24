*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${TEAM_HEADER_LABEL} =    css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element    ${TEAM_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =    get text    ${TEAM_HEADER_LABEL}
    should be equal as strings    ${ElementText}    Our Amazin Team    ignore_case=true