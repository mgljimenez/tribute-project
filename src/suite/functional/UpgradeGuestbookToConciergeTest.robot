*** Settings ***
Documentation  This test suite will test posting
...  of guestbook tribute and upgrading it To Concierge
Force Tags  smoke
Default Tags  UpgradeGuestbookToConciergeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/guestbook_page.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${UPGRADE}  Concierge

*** Test Cases ***
User Has Successfully Posted A GuestBook Tribute
  [Setup]  User Navigates Directly To "GUESTBOOK" Page
  Given User Is In "GUESTBOOK" Page
  When User Starts A Guestbook
  And User Submits A Tribute
  And User Submit Customized Tribute
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute

User has Successfully Upgraded Created Guestbook Tribute To Concierge
  Given User Is In "CREATED_TRIBUTE" Page
  When User Upgrades Created Guestbook Tribute To "${UPGRADE}"
  Then Guestbook Tribute Should Be Upgraded
