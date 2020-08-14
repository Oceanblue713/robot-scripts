*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is same basic info about the test
    [Tags]  Smoke
    Open Browser    http://www.amazon.com   firefox
    Wait Until Page Contains    Your Amazon.com
    Input Text  id=twotabsearchtextbox iPhone
    Click Button    id=searchbutton
    Wait Until Page Contains    results for "iPhone"
    Click Link  case#result_0 a.saccess-detail-page
    Wait Until Page Contains    Back to search results
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    1 item added to Cart

    Click Link  Proceed to Checkout
    Page Should Contain Element     ap_signinla_pagelet_title
    Element Text Should be      id=message

    Close Browser

*** Keywords ***

