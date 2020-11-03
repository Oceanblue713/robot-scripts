*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/ImbApp.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


# robot -d Results -i landing Tests/IMT_Tests.robot
# robot -d Results -i landing -v BROWSER:firefox -v ENVIRONMENT:qa Tests/IMT_Tests.robot

*** Variable ***
${ENVIRONMENT} =    dev
${BROWSER} =    firefox
&{URL}    dev=http://dev.internetmillionaireblueprint.com     qa=http://qa.internetmillionaireblueprint.com    prod=http://prod.internetmillionaireblueprint.com    stage=http://stage.internetmillionaireblueprint.com
&{CUSTOMEER_USER}    FirstName=John    LastName=Doe    Dob=1/1/1900    Email=jhon@email.com    Password=password
&{ADMIN_USER}    FirstName=Joe    LastName=Smith    Dob=1/1/1900    Email=joe@email.com    Password=password

*** Test Case ***
Should be able to view landing page
    [Tags]    landing
    ImbApp.Navigate to Landing Page
    Sleep    5s  

Should be able to register for new account
    [Tags]    register
    ImbApp.Navigate to Landing Page 
    ImbApp.Create New Account    ${CUSTOMEER_USER}    password
