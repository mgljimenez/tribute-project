*** Settings ***
Documentation  This test suite will test signing in on
...  Via Email Tribute Website
Force Tags  smoke
Default Tags  TributeSignInViaEmailTest
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_in_page.robot
Resource  ../../resources/keywords/manage_page.robot

*** Test Cases ***
User Has Successfully Signed In On Tribute Website Via Email
  [Setup]  Launch Tribute Website  ${SIGN_IN_URL_EXT}
  Given User Is In "SIGN_IN" Page
  When User Submits Login Credentails Via "Tribute"
  Then "MANAGE" Page Should Be Loaded Successfully
  Then User Should Successfully Logs In
  [Teardown]  Close All Browsers
