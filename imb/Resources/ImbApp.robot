*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Register.robot

*** Keywords ***
Navigate to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded 

Create New Account
    [Arguments]    ${Email}    ${Password}
    Register.Fill Page and Submit    ${Email}    ${Password}