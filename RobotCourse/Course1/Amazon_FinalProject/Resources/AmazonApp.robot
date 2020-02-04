*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Open Login Page
    [Arguments]  ${START_URL_LOGIN}
    SignIn.Go to Login Page  ${START_URL_LOGIN}
    SignIn.Login Page

Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}  ${Password}

Login with Invalid Credentials
    SignIn.Fill "Email" Field  test@test.com
    SignIn.Fill "Password" Field  invalidpw123
    SignIn.Click "Sign In" Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Insert The Product

Select Product from Search Results
    SearchResults.Verify Searched Results
    SearchResults.Select One Product
    SearchResults.Verify Back To Results Url

Add Product to Cart
    Product.Add Product to Cart

Begin Checkout
    Cart.Go To Checkout
    #Cart.No Coverage Added
    SignIn.Login Page