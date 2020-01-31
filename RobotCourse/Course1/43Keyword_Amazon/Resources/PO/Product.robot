*** Settings ***
Library  Selenium2Library

*** Keywords ***
Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart