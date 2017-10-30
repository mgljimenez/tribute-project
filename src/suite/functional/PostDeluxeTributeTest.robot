*** Settings ***
Documentation  This test suite will test posting
...  of Concierge Delux tribute
Force Tags  smoke
Default Tags  PostDeluxeTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Moving
${PACKAGE_TYPE}  Deluxe

*** Test Cases ***
User Has Successfully Posted A Concierge Deluxe Tribute
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute