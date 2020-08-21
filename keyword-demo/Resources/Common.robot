*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank     firefox

End Web Test
    Close Browser