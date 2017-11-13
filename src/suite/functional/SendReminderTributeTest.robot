*** Settings ***
Documentation  This test suite will cover testing of
...  manual email invite up to sending of reminders
Force Tags  smoke
Default Tags  SendReminderTributeTest
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
  And User Completes Sending Of Manual Invitation
  Then "CREATED_TRIBUTE" Page Should Be Loaded Successfully

User Has Sucessfully Sent Reminder To Invited Emails
  Given User Is In "CREATED_TRIBUTE" Page
  When User Sends Reminders To Invited Emails
  Then Send Reminder Success Modal Should Be Visible

