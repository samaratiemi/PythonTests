*** Settings ***
Resource  PO/Landing.robot
Resource  PO/MainNav.robot
Resource  PO/TeamSection.robot

*** Variables ***


*** Keywords ***
Go to Home Page
  [Arguments]  ${START_URL}
  Landing.Open page  ${START_URL}
  Landing.Verify Page Loaded

Go to Team Section
  MainNav.Select Team Section
  TeamSection.Verify Page Loaded

Validate Team Section
  TeamSection.Validate Page Contents

