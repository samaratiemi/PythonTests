*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    open browser  about:blank  ie

Search for Products
    Go to  http://www.amazon.com
    wait until page contains  You are on amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains   results for "Ferrari 458"
Select Product from Search Results
    click link  xpath=//a[contains(@href,'/gp/slredirect/picassoRedirect.html/ref=')]
    wait until page contains  Back to results

Add Product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin Checkout
    #click link  Proceed to checkout (1 item)
    click link  id=hlb-ptc-btn-native
    wait until page contains  Add to your order
    click button  id=siNoCoverage-announce
    page should contain element  authportal-main-section
    element text should be  css=h1.a-spacing-small  Sign-In

End Web Test
    close browser