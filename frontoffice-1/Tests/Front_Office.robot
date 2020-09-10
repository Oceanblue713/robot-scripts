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
  Log   Executing test 1
  Sleep   2s

"Team" page should match requirements
  [Documentation]   This is test 2
  [Tags]   test2
  Log   Executing test 2
  Sleep   2s