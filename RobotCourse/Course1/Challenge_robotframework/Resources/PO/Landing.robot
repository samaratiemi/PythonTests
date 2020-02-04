*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_HEADER_NAME} =  id=mainNav

*** Keywords ***
Open page
  [Arguments]  ${START_URL}
  Go to  ${START_URL}

Verify Page Loaded
  Wait Until Page Contains Element  ${LANDING_HEADER_NAME}