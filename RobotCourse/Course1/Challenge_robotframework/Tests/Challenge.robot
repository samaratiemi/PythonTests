*** Settings ***
Documentation  This suite validate the access to the RobotFrameworkTutorial Front Office website and the Team section
Resource  ../Resources/App.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  http://www.robotframeworktutorial.com/front-office/


*** Test Cases ***
Access Team Section
  [Documentation]  This is test 1
  [Tags]  test1
  Log  Executing test 1
  App.Go to Home Page  ${START_URL}
  App.Go to Team Section

Verificate Team Section Content
  [Documentation]  This is test 2
  [Tags]  test2
  Log  Executing test 1
  App.Go to Home Page  ${START_URL}
  App.Go to Team Section
  App.Validate Team Section