*** Settings ***
Library  Selenium2Library

*** Variables ***
${TEAM_HEADER_TITLE} =  xpath=//*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains Element  ${TEAM_HEADER_TITLE}  timeout=30

Validate Page Contents
  ${ElementText} =  Get Text  ${TEAM_HEADER_TITLE}
  Should Be Equal As Strings  ${ElementText}   Our Amazing Team  ignore_case=true