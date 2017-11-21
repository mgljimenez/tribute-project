*** Settings ***
Documentation  This test suite will cover sharing
...  completed tribute via Email
Force Tags  smoke  completeshare
Default Tags  CompletedTributeEmailShareTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/test_for_render_jobs_page.robot

*** Variable ***
${TRIBUTE_ACCOUNT}  chaomarco+135@gmail.com

*** Test Cases ***
User Has Successfully Shared Completed Tribute Via Email
  [Setup]  User Navigates Directly To "TEST302" Page
  Given User Is In "TEST302" Page
  When User Sends Email To Receipient
  Then User Should Be Able To Send Email To Recipient
