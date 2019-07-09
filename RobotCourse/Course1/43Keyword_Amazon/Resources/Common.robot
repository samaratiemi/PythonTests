*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  about:blank  ie

End Web Test
    close browser