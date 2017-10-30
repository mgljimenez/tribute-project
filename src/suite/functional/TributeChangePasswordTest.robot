*** Settings ***
Documentation  This test will cover testing of
...  from signing up to changing of password
Force Tags  smoke
Default Tags  TributeChangePasswordTest
Suite Setup  Launch Tribute Website  ${SIGN_UP_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_up_page.robot
Resource  ../../resources/keywords/manage_page.robot
Resource  ../../resources/keywords/my_account_page.robot

*** Test Cases ***
User Has Successfully Signed Up On Tribute Website Via Email
  Given User Is In "SIGN_UP" Page
  When User Submits Sign Up Credentails Via "Email"
  Then "MANAGE" Page Should Be Loaded Successfully
  Then User Should Successfully Logs In

User Has Successfully Changed Password
  [Setup]  User Navigates Directly To "MY_ACCOUNT" Page
  Given User Is In "MY_ACCOUNT" Page
  When User Changes Password
  Then "MANAGE" Page Should Be Loaded Successfully
