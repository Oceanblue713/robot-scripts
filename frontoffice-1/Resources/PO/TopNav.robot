*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${TOP_NAV_TEAM_LINK} =   Team

*** Keywords ***
Select "Team" Page
    Click link   ${TOP_NAV_TEAM_LINK}
    Sleep   3s