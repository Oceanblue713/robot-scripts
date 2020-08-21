*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.Robot
Resource  ../Resources/Common.Robot

*** Test Cases ***
User must sign in to check out
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    Common.Begin Web Test
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
    Common.End Web Test
