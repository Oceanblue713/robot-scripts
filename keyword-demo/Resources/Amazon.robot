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
    SearchResults.Select from result page

Add Product to Cart
    Cart.Add to List

Begin Checkout
    SignIn.Wait Sign-In title
    SignIn.Click Create Amazon account
