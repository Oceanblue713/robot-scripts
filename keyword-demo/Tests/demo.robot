*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.Robot
Resource  ../Resources/Common.Robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  kitsune udon

*** Test Cases ***
User must sign in to check out
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
