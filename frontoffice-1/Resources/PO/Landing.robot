*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${LANDING_NAVIGATION_ELEMENT} =   id=mainNav

*** Keywords ***
Navigate To
    Go to   ${URL} 

Verify Page Loaded 
    wait until page contains element   ${LANDING_NAVIGATION_ELEMENT}