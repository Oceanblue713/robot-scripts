*** Keywords ***
[Documentation]    Data Driven Testing
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/CarsApp.robot
Resource    ../Resources/DataManager.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


*** Variable ***

*** Test Case ***
Should see correct error messages with invalid 
    ${InvalidLoginScenarios} =    DataManager.Get CSV data     ${INVALID_CREDENTIALS_PATH_CSV}
    

Unregistered user should see correct errormessage at login
    CarsApp.Navigate to Sing In Page
    CarsApp.Attempt Login    ${UNREGISTERED_USER}
    CarsApp.Verify Login Page Error Message    ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with invalid password should show correct error Message
    CarsApp.Navigate to Sing In Page
    CarsApp.Attempt Login    ${INVALID_PASSWORD_USER}
    CarsApp.Verify Login Page Error Message    ${INVALID_USER.ExpectedErrorMessage}

Login with blank email and password should show correct error Message
    CarsApp.Navigate to Sing In Page
    CarsApp.Attempt Login    ${BLANK_CREDENTIALS_USER
    CarsApp.Verify Login Page Error Message    ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}
