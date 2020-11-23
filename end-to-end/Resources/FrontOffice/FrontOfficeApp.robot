*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/Team.robot

*** Variable ***


*** Keywords ***
Go To Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go To "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents
