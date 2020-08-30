*** settings ***

*** Variables ***
@{MY_VARIABLE} =  Hello There  This is value2  I am item3

*** Test Cases ***
Variable demonstration
    log  @{MY_VARIABLE}[0]
    log  @{MY_VARIABLE}[1]
    log  @{MY_VARIABLE}[2]

Variable demonstration2
    @{my_list_variable} =  Create List  Item1  Item2  Item3
    log  @{my_list_variable}[0]
    log  @{my_list_variable}[1]
    log  @{my_list_variable}[2]