*** Settings ***
Documentation   These are some web tests
Library   Dialogs 
Resource   ../Resources/Web/Common.robot
Resource   ../Resources/Web/Amazon.robot
Test Setup   Common.Begin Web Test
Test Teardown   Common.End Web Test

*** Variable ***
${BROWSER} =   firefox
${START_URL} =   https://www.amazon.com 
${SEARCH_TERM} =  Rerrari 458


*** Test Case ***
Logged out user can search for products 
    [Tags]   Web
    ${new_browser} =   Get Selection From User Which broser?   chrome ie firefox
    Set Global Variable   ${BROWSER}   ${new_browser}
    Amazon.Search for Products

Logged out user can add product to cart
    [Tags]    Web
    Amazon.Search for Products
    Execute Manual Step   Do something manually!   It failed!
    Amazon.Select Product from search Results
    Pause Execution
    Amazon.Add Product to cart