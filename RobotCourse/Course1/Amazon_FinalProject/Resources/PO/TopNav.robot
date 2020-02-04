*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BAR} =      id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =      xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Insert The Product
  Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}
  Click Button  ${TOPNAV_SEARCH_BUTTON}
