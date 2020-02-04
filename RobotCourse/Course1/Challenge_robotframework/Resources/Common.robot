*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
  Open Browser  about:blank  ${BROWSER}

End Web Test
  Close Browser