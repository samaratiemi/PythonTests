*** Settings ***
Library  Selenium2Library

*** Keywords ***
Go to Checkout
    Wait Until Element Is Visible   id=attach-sidesheet-checkout-button
    Click Element   id=attach-sidesheet-checkout-button
    #Click Element   id=hlb-ptc-btn-native

No Coverage Added
    Wait Until Page Contains   Add to your order
    Wait Until Page Contains   No Thanks
    Click Element   id=siNoCoverage-announce
