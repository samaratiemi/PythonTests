*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Login Page
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}  Sign-In