*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.Robot
Resource  ../Resources/Common.Robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
User can search for products
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for Products

User must sign in to check out
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
