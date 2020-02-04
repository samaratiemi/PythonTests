*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Common.robot   #for Setup & Test Teardown
Resource  ../Resources/AmazonApp.robot   # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${BROWSER} =   ie
${START_URL} =   http://www.amazon.com
${START_URL_LOGIN} =  https://www.amazon.com/ap/signin?_encoding=UTF8&ignoreAuthState=1&openid.assoc_handle=usflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fgp%2Fcart%2Fview.html%3Fref_%3Dnav_signin&switch_account=
${SEARCH_TERM} =   Ferrari 458
${LOGIN_EMAIL} =   test@test.com
${LOGIN_PASSWORD} =  pwtestfake

*** Test Cases ***
Should be able to Login
   [Tags]  Run
   AmazonApp.Open Login Page  ${START_URL_LOGIN}
   AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user can search for products
   [Documentation]  This is some basic info about the test
   [Tags]  Current
   AmazonApp.Search for Products

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout