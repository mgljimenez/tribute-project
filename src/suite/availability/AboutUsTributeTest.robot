*** Settings ***
Documentation  This test suite will cover clicking of
...  different buttons/links on about-us page
Force Tags  smoke  atest
Default Tags  AboutUsTributeTest
Suite Setup  Launch Tribute Website  ${ABOUT_US_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/about_us_page.robot

*** Test Cases ***
User Has Successfully Viewed Start Page
  Given User Is In "ABOUT_US" Page
  When User Clicks "START_A_TRIBUTE" "BUTTON" On About Page
  Then "Start" Page Should Be Loaded Successfully
  [Teardown]  Go Back

User Has Successfully Viewed Video Montage
  Given User Is In "ABOUT_US" Page
  When User Clicks "VIDEO_MONTAGE" "LINK" On About Page
  Then "VIVEO_VIDEO" Page Should Be Loaded Successfully
  [Teardown]  Run Keywords  Close Window
  ...  AND  Select Window  main

User Has Successfully Viewed Watch Our Story
  Given User Is In "ABOUT_US" Page
  When User Clicks "WATCH_OUR_STORY" "BUTTON" On About Page
  Then Video Player Should Be Visible
  [Teardown]  Close Video Player

User Has Successfully Viewed Read Our Manifesto
  Given User Is In "ABOUT_US" Page
  When User Clicks "MANIFESTO" "BUTTON" On About Page
  Then Manifesto Modal Should Be Visible
  [Teardown]  Close Manifesto Modal

User Has Successfully Viewed Intercom Messenger
  Given User Is In "ABOUT_US" Page
  When User Clicks "SIGNUP" "BUTTON" On About Page
  Then Intercom Messenger Should Be Visible
