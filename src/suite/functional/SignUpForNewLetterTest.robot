*** Settings ***
Documentation  This test suite will cover testing of
...  signing up for Newsletter
Force Tags  smoke
Default Tags  SignUpForNewLetterTest
Suite Setup  Launch Tribute Website  ${HOME_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/home_page.robot

*** Test Cases ***
User Has Successfully Signed Up For NewsLetter
  Given User Is In "HOME" Page
  When User Signs Up For Newsletter
  Then User Should See Newsletter Success Message
