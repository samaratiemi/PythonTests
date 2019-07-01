*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  ie

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ${BROWSER}
    Close Browser

*** Keywords ***
