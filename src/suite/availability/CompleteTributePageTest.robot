*** Settings ***
Documentation  This test suite will cover the availability
...  of complete tribute page
Force Tags  smoke  atest
Default Tags  CompleteTributePageTest
Suite Setup  Launch Tribute Website  ${TEST302_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/test_for_render_jobs_page.robot

*** Test Cases ***
User Has Successfully Viewed Completed Tribute Page
  Given User Is In "TEST302" Page
  Then "COMPLETED_TRIBUTE" Element List Should Be Visible
