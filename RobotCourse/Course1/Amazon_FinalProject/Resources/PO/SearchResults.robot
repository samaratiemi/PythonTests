*** Settings ***
Library  Selenium2Library

*** Keywords ***
SearchResults.Verify Searched Results
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Select One Product
   Click Link  xpath=//a[contains(@href,'/ref=sr_1_8?keywords=')]

Verify Back To Results Url
    Wait Until Page Contains  Back to results