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
Logged out user should be able to search for products
    [Tags]  Smoke
    Amazon.Search for Products

Logged out user should be able to view a product
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user should be able to add product to a cart
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
