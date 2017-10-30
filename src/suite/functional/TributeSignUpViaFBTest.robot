*** Settings ***
Documentation  This test suite will test signing up on
...  Via Facebook Tribute Website
Force Tags  smoke
Default Tags  TributeSignUpViaFBTest
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/sign_up_page.robot
Resource  ../../resources/keywords/manage_page.robot

*** Test Cases ***
User Has Successfully Signed Up On Tribute Website Via Facebook
  [Setup]  Launch Tribute Website  ${SIGN_UP_URL_EXT}
  Given User Is In "SIGN_UP" Page
  When User Submits Sign Up Credentails Via "Facebook"
  Then "MANAGE" Page Should Be Loaded Successfully
  Then User Should Successfully Logs In
  [Teardown]  Close All Browsers
