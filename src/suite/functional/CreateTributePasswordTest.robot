*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute and setting a password
Force Tags  smoke
Default Tags  CreateTributePasswordTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Created Tribute Password
  Given User Is In "CREATED_TRIBUTE" Page
  When User Creates Tribute Password
  Then Success Modal Should Be Visible
