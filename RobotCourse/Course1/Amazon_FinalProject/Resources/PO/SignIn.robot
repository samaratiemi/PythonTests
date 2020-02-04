*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Go to Login Page
    [Arguments]  ${START_URL_LOGIN}
    Go to  ${START_URL_LOGIN}

Login Page
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}  Sign-In

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]  ${Username}
    Log  Filling Email Field with  ${Username}

Fill "Password" Field
    [Arguments]  ${Password}
    Log  Filling Password Field with  ${Password}

Click "Sign In" Button
    Log  Clicking Submit Button