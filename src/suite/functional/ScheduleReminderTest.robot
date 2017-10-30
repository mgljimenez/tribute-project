*** Settings ***
Documentation  This test suite will test sending scheduled reminder
Force Tags  smoke
Default Tags  ScheduleReminderTest
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_in_page.robot
Resource  ../../resources/keywords/home_page.robot

*** Test Cases ***
User Has Successfully Scheduled Reminder Via Email
  [Setup]  Launch Tribute Website  ${HOME_URL_EXT}
  Given User Is In "HOME" Page
  When User Submits "Email" Schedule Reminder
  Then User Should Successfully Creates A Scheduled Reminder

User Has Successfully Scheduled Reminder Via Facebook
  [Setup]  User Navigates Directly To "Home" Page
  Given User Is In "HOME" Page
  When User Submits "Facebook" Schedule Reminder
  Then User Should Successfully Creates A Scheduled Reminder
