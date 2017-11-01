*** Settings ***
Documentation  This test suite will cover clicking of
...  different social media icon on footer section
Force Tags  smoke  atest
Default Tags  SocialMediaTributeTest
Suite Setup  Launch Tribute Website  ${ABOUT_US_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/footer_module.robot

*** Test Cases ***
User Has Successfully Viewed Tribute Instagram Page
  Given User Is In "ABOUT_US" Page
  When User Clicks "Instagram" Social Media On Footer Section
  Then "Instagram" Social Media Page Should Be Loaded Successfully
  [Teardown]  Run Keywords  Close Window  AND  Select Window  main

User Has Successfully Viewed Tribute Facebook Page
  Given User Is In "ABOUT_US" Page
  When User Clicks "Facebook" Social Media On Footer Section
  Then "Facebook" Social Media Page Should Be Loaded Successfully
  [Teardown]  Run Keywords  Close Window  AND  Select Window  main

User Has Successfully Viewed Tribute Twitter Page
  Given User Is In "ABOUT_US" Page
  When User Clicks "Twitter" Social Media On Footer Section
  Then "Twitter" Social Media Page Should Be Loaded Successfully
  [Teardown]  Run Keywords  Close Window  AND  Select Window  main

User Has Successfully Viewed Tribute Youtube Page
  Given User Is In "ABOUT_US" Page
  When User Clicks "Youtube" Social Media On Footer Section
  Then "Youtube" Social Media Page Should Be Loaded Successfully
  [Teardown]  Run Keywords  Close Window  AND  Select Window  main