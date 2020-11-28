*** Settings ***
Documentation    This is end to end suite
Resource    ../../Data/InputData.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test 

# robot -d Results Tests/EndToEnd/End_to_End.robot

*** Test Case ***
Should be able to access both sites
    [Documentation]    This is test 1
    [Tags]    test 1
    FrontOfficeApp.Go To Landing Page
    BackOfficeApp.Go To Landing Page

