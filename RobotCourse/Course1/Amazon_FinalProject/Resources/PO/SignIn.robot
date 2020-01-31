*** Settings ***
Library  Selenium2Library

*** Keywords ***
Login Page
    Page Should Contain Element  authportal-main-section
    Page Should Contain Element  name=signIn  Sign-In