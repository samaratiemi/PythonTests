*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    open browser  http://www.amazon.com  ie
    wait until page contains  You are on amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains   results for "Ferrari 458"
    click link  xpath=//a[contains(@href,'/gp/slredirect/picassoRedirect.html/ref=')]
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

    click link  Proceed to checkout (1 item)
    wait until page contains  Add to your order
    click button  id=siNoCoverage-announce
    page should contain element  authportal-main-section
    element text should be  css=h1.a-spacing-small  Sign-In

    close browser

*** Keywords ***