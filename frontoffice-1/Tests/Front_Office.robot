*** Settings ***
Documentation   Test 
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup   Begin Web Test
Test Teardown   End Web Test

*** Variable ***
${BROWSER} =  firefox
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Case ***
Should be able to access "Team" page
  [Documentation]   This is test 1
  [Tags]   test1
  FrontOfficeApp.Go to Landing Page
  FrontOfficeApp.Go to "Team" Page


"Team" page should match requirements
  [Documentation]   This is test 2
  [Tags]   test2
  FrontOfficeApp.Go to Landing Page
  FrontOfficeApp.Go to "Team" Page
  FrontOfficeApp.Validate "Team" Page