*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute going to faq page
Force Tags  smoke
Default Tags  FAQTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Upgraded Created Tribute
  Given User Is In "CREATED_TRIBUTE" Page
  When User Goes To FAQ Page
  Then "ZENDESK" Page Should Be Loaded Successfully
