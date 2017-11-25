*** Settings ***
Documentation  This test suite will cover viewing
...  of video on send reminder page
Force Tags  smoke  viewVideos
Default Tags  SendReminderViewVideoTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot

*** Variable ***
${TRIBUTE_ACCOUNT}  chaomarco+135@gmail.com
${MANAGE_COMPLETED_TRIBUTE_URL_EXT}  manage/9e78e68a32504ee9bf82c397058341a1

*** Test Cases ***
User Has Successfully Viewed Video On Send Reminder Page
  [Setup]  User Navigates Directly To "MANAGE_COMPLETED_TRIBUTE" Page
  Given User Is In "MANAGE_COMPLETED_TRIBUTE" Page
  When User Views Video On Send Reminder Page
  Then Video Modal Should Be Visible
