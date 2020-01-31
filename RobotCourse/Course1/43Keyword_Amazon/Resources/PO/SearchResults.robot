*** Settings ***
Library  Selenium2Library

*** Keywords ***
SearchResults.Verify Searched Results
    Wait Until Page Contains  results for "Ferrari 458"

Select One Product
   Click Link  xpath=//a[contains(@href,'/ref=sr_1_9?keywords=')]

Verify Back To Results Url
    Wait Until Page Contains  Back to results