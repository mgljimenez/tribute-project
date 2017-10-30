*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute and changing due date
Force Tags  smoke
Default Tags  ChangeDueDateTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Test Cases ***
User Has Successfully Posted A DIY Tribute
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute

User has Successfully Created Tribute Password
  Given User Is In "CREATED_TRIBUTE" Page
  When User Changes Tribute Due Date
  Then Success Modal Should Be Visible