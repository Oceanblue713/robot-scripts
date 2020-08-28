*** Settings ***

*** Variables ***
${MY_VARIABLE} =  This is my input data2

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_variable} =   set variable  Something else
    log  ${my_new_variable}
Variable demonstration2
    Log     ${MY_VARIABLE}

Variable demonstration
    Log     ${MY_VARIABLE}


*** Keywords ***

