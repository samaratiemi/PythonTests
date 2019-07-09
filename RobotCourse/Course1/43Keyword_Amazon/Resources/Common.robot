*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  about:blank  ie

End Web Test
    close browser

Insert Testing Data
    Custom keyword 1
    Custom keyword 2

Cleanup Testing Data
    Log  I am cleaning up the test data...

Custom keyword 1
    Log  Customizing keyword 1...

Custom keyword 2
    Log  Customizing keyword 2...