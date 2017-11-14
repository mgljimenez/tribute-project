*** Settings ***
Documentation  This test suite will cover testing of
...  manual email invite up to deleting it.
Force Tags  smoke
Default Tags  DeleteInvitedTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User Has Successfully Deleted Invited Contact Via Email
  Given User Is In "EMAIL_INVITATION" Page
  When User Deletes Invited Email
  Then User Should Successfully Removed Invited Email
