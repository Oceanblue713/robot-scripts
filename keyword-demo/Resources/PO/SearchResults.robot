*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Select from result page
    Click Link  link=Maruchan Aka Kitsune Udon Cup, 3.39-Ounce Units (Pack of 12)

Verify Search Completed
    Wait Until Page Contains    results for
    [Return]    Found It!