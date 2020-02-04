*** Settings ***
Library  Selenium2Library

*** Variables ***
${MAINNAV_TEAM_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keyword ***

Select Team Section
  Click element  ${MAINNAV_TEAM_LINK}
