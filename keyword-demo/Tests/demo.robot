*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.Robot
Resource  ../Resources/Common.Robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  kitsune udon
${LOGIN_EMAIL} =   admin123@amazon.com
${LOGIN_PASSWORD} =   password

*** Test Cases ***
Should be able to login
    AmazonApp.Login   ${LOGIN_EMAIL}   ${LOGIN_PASSWORD}

Logged out user should be able to search for products
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Do Some Custom Thing

Logged out user should be able to view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to a cart
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    ${ReturnedInfo} =   AmazonApp.Search for Products
    Log     ${ReturnedInfo}
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

Should be able to do something
    Open browser    ${START_URL}    ${BROWSER}
    #Click Link    xpath=//*[@id="glow-ingress-block"]
    Click Image    Rubie's Women's Marvel Classic Black Panther Costume, Medium
    Close Browser
