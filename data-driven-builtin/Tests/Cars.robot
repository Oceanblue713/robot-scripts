*** Keywords ***
[Documentation]    Data Driven Testing
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/CarsApp.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


*** Variable ***

*** Test Case ***
Invalid Login senarios should display correct error message
    [Template]    Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}

My Test
    [Template]      My Test Template
    One    Two      Three       Four

*** Keywords ***
My Test Template
    [Arguments]    ${ValueOne}    ${ValueTwo}    ${ValueThree}    ${ValueFour}