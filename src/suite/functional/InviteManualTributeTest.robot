*** Settings ***
Documentation  This test suite will cover
...  testing of manual email invite
Force Tags  smoke
Default Tags  InviteManualTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Test Cases ***
User Has Successfully Manual Invited Contacts Via Email
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Sends Manual Invitation
  Then Invited Email Row Should Be Visible
