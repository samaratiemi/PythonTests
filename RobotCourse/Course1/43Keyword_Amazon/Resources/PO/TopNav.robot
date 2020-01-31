*** Settings ***
Library  Selenium2Library

*** Keywords ***
Insert The Product
  Input Text  id=twotabsearchtextbox  Ferrari 458
  Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
