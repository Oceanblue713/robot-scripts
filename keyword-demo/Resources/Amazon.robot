*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Signin.robot
Resource  ../Resources/PO/TopNav.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Product.Input Product
    Product.Click The Search Button

Select Product from Search Results
    Click Link      css=div:nth-of-type(4)  .celwidget.slot\=MAIN.template\=SEARCH_RESULTS.widgetId\=search-results .a-link-

Add Product to Cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    1 item added to Cart

Begin Checkout
    Click Link      Proceed to Checkout
    Page Should Contain Element     ap_signin1a_pagelet_title
    Element Text Should Be      ap_signin1a_pagelet_title   Sign In
