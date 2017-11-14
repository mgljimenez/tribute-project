*** Settings ***
Documentation  This test suite cover creting of
...  DIY Tribute and changing due date
Force Tags  smoke
Default Tags  ChangeDueDateTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User has Successfully Created Tribute Password
  Given User Is In "CREATED_TRIBUTE" Page
  When User Changes Tribute Due Date
  Then Success Modal Should Be Visible
