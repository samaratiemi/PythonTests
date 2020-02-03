*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Common.robot   #for Setup & Test Teardown
Resource  ../Resources/Amazon.robot   # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${BROWSER} =   ie
${START_URL} =   http://www.amazon.com
${SEARCH_TERM} =   Ferrari 458


*** Test Cases ***
Logged out user can search for products
   [Documentation]  This is some basic info about the test
   [Tags]  Current
   Amazon.Search for Products

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout