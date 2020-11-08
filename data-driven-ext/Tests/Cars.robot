*** Keywords ***
[Documentation]    Data Driven Testing
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/CarsApp.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


*** Variable ***

*** Test Case ***
Unregistered user should see correct errormessage at login
    CarsApp.Navigate to Sing In Page
    CarsApp.Attempt Login    ${UNREGISTERED_USER}
    CarsApp.Verify Login Page Error Message    ${UNREGISTERED_USER.ExpectedErrorMessage}


