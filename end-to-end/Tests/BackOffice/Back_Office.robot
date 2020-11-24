*** Settings ***
Documentation    
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/Common/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test 

# robot -d Results Tests/BackOffice/back_Office.robot

*** Variable ***
${BROWSER} =    firefox
${URL} =    http://www.robotframeworktutorial.com/back-office


*** Test Case ***
Should be able to access "Landing" page
    [Documentation]    This is test 1
    [Tags]    test 1
    BackOfficeApp.Go To Landing Page

