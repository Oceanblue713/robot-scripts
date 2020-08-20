*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
User must sign in to check out
    [Documentation]   This is some basic info about the test
    [Tags]  Smoke

    # Begin Web Test
    Open Browser    about:blank     firefox

    # Search for Products
    Go To   https://www.amazon.com      firefox
    Wait Until Page Contains    Your Amazon.com
    Input Text      id=twotabsearchtextbox Ferrari 458
    Click Button    id=searchbutton
    Wait Until Page Contains    results for "Ferrari 458"

    # Select Product from Search Results
    Click Link      css=div:nth-of-type(4)  .celwidget.slot\=MAIN.template\=SEARCH_RESULTS.widgetId\=search-results .a-link-normal.a-text-normal

    # Add Product to Cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    1 item added to Cart

    # Begin Checkout
    Click Link      Proceed to Checkout
    Page Should Contain Element     ap_signin1a_pagelet_title
    Element Text Should Be      ap_signin1a_pagelet_title   Sign In

    # End Web Test (common)
    Close Browser


*** Keywords ***
Begin Web Test

Search for Products

Select Product from Search Results

Add Product to Cart

Begin Checkout