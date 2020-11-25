*** Settings ***
Resource    ./PO/BackOffice.Landing.robot
Resource    ./PO/TopNav.robot


*** Variable ***


*** Keywords ***
Go To Landing Page
    BackOffice.Landing.Navigate To
    # Landing.Verify Page Loaded
