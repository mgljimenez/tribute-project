*** Settings ***
Documentation  This test will cover redirecting to purchase page
...  via /test-for-render-jobs
Force Tags  smoke  completeshare
Default Tags  CompletedTributePurchaseGiftTest
Suite Setup  Launch Tribute Website  ${TEST_FOR_RENDER_JOBS_URL_EXT}
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/test_for_render_jobs_page.robot

*** Test Cases ***
User Has Successfully Shared Tribute Via Facebook
  Given User Is In "TEST_FOR_RENDER_JOBS" Page
  When User Goes To Purhcase Page via Completed Tribute Page
  Then "PURCHASE" Page Should Be Loaded Successfully
