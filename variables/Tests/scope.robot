*** Settings ***
Resource  ../Resources/scope.robot

*** Variables ***
${MY_VARIABLE} =  From Tests/scope Variables

*** Test Cases ***
Create and log a variable
    log  ${MY_VARIABLE}

Acceess a variable
    log  ${MY_VARIABLE}

*** Keywords ***
