*** Settings ***
Documentation  This test will cover completing
...  tribute share via Email
Force Tags  smoke  completeshare
Default Tags  CompleteTributeShareViaEmailTest
Suite Setup  Launch Tribute Website  ${TEST_FOR_RENDER_JOBS_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/test_for_render_jobs_page.robot

*** Test Cases ***
User Has Successfully Shared Tribute Via Email
  Given User Is In "TEST_FOR_RENDER_JOBS" Page
  When User Completes Share Tribute Via "Email"
  Then User Should Successfully See Personal Email Client Modal
