*** Settings ***
Resource  ../variables/test_for_render_jobs_constants.robot

*** Keywords ***
#--- When ---#
User Completes Share Tribute Via "${e_BUTTON_NAME}"
  Wait Until Element Should Be Visible
  ...  ${SHARE_WITH}
  Click Element  ${${e_BUTTON_NAME}_SHARE}
  Run Keyword If  '${e_BUTTON_NAME}'=='Facebook'
  ...  Run Keywords
  ...  Import Resource File  sign_in_page
  ...  AND  Login Via "${e_BUTTON_NAME}"
  ...  AND  Select Window  new
  ...  AND  Click Element  ${POST_TO_FACEBOOK_BUTTON}
  ...  AND  Select Window  main

#--- Then ---#
User Should Successfully Posted Tribute On Facebook
  User Is In "TEST_FOR_RENDER_JOBS" Page
