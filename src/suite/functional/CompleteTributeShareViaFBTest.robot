*** Settings ***
Documentation  This test will cover completing
...  tribute share via facebook
Force Tags  smoke
Default Tags  CompleteTributeShareViaFBTest
Suite Setup  Launch Tribute Website  ${TEST_FOR_RENDER_JOBS_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/test_for_render_jobs_page.robot

*** Test Cases ***
User Has Successfully Shared Tribute Via Facebook
  Given User Is In "TEST_FOR_RENDER_JOBS" Page
  When User Completes Share Tribute Via "Facebook"
  Then User Should Successfully Posted Tribute On Facebook
