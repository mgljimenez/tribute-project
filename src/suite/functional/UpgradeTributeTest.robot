*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute and upgrading the tribute
Force Tags  smoke
Default Tags  UpgradeTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Upgraded Created Tribute
  Given User Is In "CREATED_TRIBUTE" Page
  When User Upgrades Created Tribute
  Then Tribute Should Be Upgraded