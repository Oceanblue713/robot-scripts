*** Settings ***
Library   SeleniumLibrary

*** Variable ***

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${BROWSER}

End Web Test
    Close All Browsers