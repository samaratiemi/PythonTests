*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
   Go to  http://www.amazon.com

Verify Page Loaded
   Wait Until Page Contains  Your Amazon.com