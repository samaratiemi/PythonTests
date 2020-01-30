*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search for Products
    Go to  http://www.amazon.com
    wait until page contains  You are on amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains   results for "Ferrari 458"

Select Product from Search Results
    #click element  css=#search > div.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.s-right-column.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-result-list.s-search-results.sg-row > div:nth-child(1) > div > span > div > div > div:nth-child(2) > div:nth-child(3) > div > div.a-section.a-spacing-none.a-spacing-top-small > h2 > a > span
    click link  xpath=//a[contains(@href,'/ref=sr_1_7?keywords=')]
    #click link xpath=//html/body/div[1]/div[1]/div[1]/div[2]/div/span[4]/div[1]/div[8]/div/span/div/div/div[2]/h2/a
    wait until page contains  Back to results

Add Product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin Checkout
    click element  id=attach-sidesheet-checkout-button   modifier=False
    page should contain element  authportal-main-section
    page should contain element  name=signIn  Sign-In
