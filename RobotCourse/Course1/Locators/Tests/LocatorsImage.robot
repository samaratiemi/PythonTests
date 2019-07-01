*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com  ie
    Sleep  3s
    Click Image  Shop Men's Shoes
