*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute and adding to Cart
Force Tags  smoke
Default Tags  AddToCartTributeTest
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

User Has Successfully Purchased Items
  Given User Is In "CREATED_TRIBUTE" Page
  When User Purchases Items For Created Tribute
  Then User Should Successfully Purchased Items
  When User Purchases "HIGHLIGHT_REEL" For Created Tribute
  Then Intercom Messenger Should Be Visible