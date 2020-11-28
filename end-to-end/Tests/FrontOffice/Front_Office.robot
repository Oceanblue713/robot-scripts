*** Settings ***
Documentation    
Resource    ../../Data/InputData.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test 

# robot -d Results Tests/FrontOffice/Front_Office.robot

*** Test Case ***
Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    test 1

    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "Team" Page
