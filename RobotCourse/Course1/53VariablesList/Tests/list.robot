*** Settings ***


*** Variables ***
@{MY_VARIABLE} =  Hello there   This is value 2   I am item 3

*** Test Cases ***
Variable demonstration
   Log  @{MY_VARIABLE}[0]
   Log  @{MY_VARIABLE}[1]
   Log  @{MY_VARIABLE}[2]

Variable demonstration 2
   @{my_list_variable} =   Set Variable   Item 1   Item 2   Item 3
   Log  @{my_list_variable}[0]
   Log  @{my_list_variable}[1]
   Log  @{my_list_variable}[2]
