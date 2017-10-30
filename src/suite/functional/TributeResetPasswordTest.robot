*** Settings ***
Documentation  This test suite will cover testing
...  of resetting user's password
Force Tags  smoke
Default Tags  TributeResetPasswordTest
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_in_page.robot
Resource  ../../resources/keywords/manage_page.robot

*** Variables ***
${TRIBUTE_ACCOUNT}  chaomarco+137@gmail.com

*** Test Cases ***
User Has Successfully Resetted Password
  [Setup]  Launch Tribute Website  ${SIGN_IN_URL_EXT}
  Given User Is In "SIGN_IN" Page
  When "${TRIBUTE_ACCOUNT}" Resets The Passwords
  Then "RESET_PASSWORD_DONE" Page Should Be Loaded Successfully
  And User Should Successfully Send Request To Reset Password
