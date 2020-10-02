*** Settings ***
Library  ../Libraries/MyCustomLibrary.py
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Signin.robot
Resource  ../Resources/PO/TopNav.robot

*** Keywords ***
Login
    [Arguments]   ${Username}   ${Password}
    SignIn.Login With Valid Credentials   ${Username}   ${Password}

Login with Invalid Credentials
    SignIn.Fill "Email" Field     aaa@aa.a
    SignIn.Click "Continue" Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Product.Input Product
    Product.Click The Search Button
    ${ReturnInfo} =     SearchResults.Verify Search Completed
    Log     ${ReturnInfo}

Select Product from Search Results
    SearchResults.Select from result page

Add Product to Cart
    Cart.Add to List

Begin Checkout
    SignIn.Wait Sign-In title
    SignIn.Click Create Amazon account

Do Some Custom Thing
    Do Something Special