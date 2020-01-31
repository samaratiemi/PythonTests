*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Variables ***
${BROWSER} =   ie
${START_URL} =   https://www.amazon.com
${SEARCH_TERM} =   Lamborguini


*** Keywords ***
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
    Cart.No Coverage Added
    SignIn.Login Page