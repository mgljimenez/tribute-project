*** Settings ***
Documentation  This test suite will cover clicking of
...  different buttons/links on pricing page
Force Tags  smoke  atest
Default Tags  PricingTributeTest
Suite Setup  Launch Tribute Website  ${PRICING_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/pricing_page.robot

*** Test Cases ***
User Has Successfully Clicked Get Started On Tribute Option
  Given User Is In "PRICING" Page
  When User Clicks "GET_STARTED" On "TRIBUTE" Option
  Then "Start" Page Should Be Loaded Successfully
  [Teardown]  Go Back

User Has Successfully Clicked Get Started On Concierge Option
  Given User Is In "PRICING" Page
  When User Clicks "GET_STARTED" On "CONCIERGE" Option
  Then "Start" Page Should Be Loaded Successfully
  [Teardown]  Go Back

User Has Successfully Clicked Contact Us On Pro Option
  Given User Is In "PRICING" Page
  When User Clicks "Contact Us" On "PRO" Option
  Then Intercom Messenger Should Be Visible
