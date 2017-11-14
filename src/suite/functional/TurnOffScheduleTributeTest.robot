*** Settings ***
Documentation  This test suite cover creating of
...  DIY Tribute and removing all schedule options
Force Tags  smoke
Default Tags  TurnOffScheduleTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Disbaled All Scheduled Options
  Given User Is In "CREATED_TRIBUTE" Page
  When User Disables All Schedule Options
  Then Success Modal Should Be Visible
