*** Settings ***
Documentation  This test suite will test signing in on
...  Via Facebook up to sending message via Facebook
Force Tags  smoke
Default Tags  SendMessageViaFBTest
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_in_page.robot
Resource  ../../resources/keywords/start_page.robot
Resource  ../../resources/keywords/manage_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Test Cases ***
User Has Successfully Signed In On Tribute Website Via Facebook
  [Setup]  Launch Tribute Website  ${SIGN_IN_URL_EXT}
  Given User Is In "SIGN_IN" Page
  When User Submits Login Credentails Via "Facebook"
  Then "MANAGE" Page Should Be Loaded Successfully
  Then User Should Successfully Logs In

User Has Successfully Posted A DIY Tribute
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute

User Has Successfully Send Facebook Message
  Given User Is In "CREATED_TRIBUTE" Page
  When User Sends Facebook Message
  Then Facebook Modal Should Be Visible
