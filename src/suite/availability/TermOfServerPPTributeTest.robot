*** Settings ***
Documentation  This test suite will cover clicking of
...  terms of service and
Force Tags  smoke  atest
Default Tags  TermOfServerPPTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/footer_module.robot

*** Test Cases ***
User Has Successfully Viewed Terms Of Service
  Given User Is In "MANAGE" Page
  When User Clicks "TERMS_OF_SERVICES" on Footer Section
  Then "TERMS_OF_SERVICES" Page Should Be Loaded Successfully
  [Teardown]  Go Back

User Has Successfully Viewed Privacy Policy
  Given User Is In "MANAGE" Page
  When User Clicks "PRIVACY_POLICY" on Footer Section
  Then "PRIVACY_POLICY" Page Should Be Loaded Successfully
  [Teardown]  Go Back