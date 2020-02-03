*** Settings ***
Library  Selenium2Library

*** Keywords ***
Insert The Product
  Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
  Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
