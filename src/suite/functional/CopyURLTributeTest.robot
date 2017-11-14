*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute and upgrading the tribute
Force Tags  smoke
Default Tags  CopyURLTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Copied URL For Created Tribute
  Given User Is In "CREATED_TRIBUTE" Page
  When User Copies URL On Manage Tribute
  Then Link Should Be Successfully Copied
