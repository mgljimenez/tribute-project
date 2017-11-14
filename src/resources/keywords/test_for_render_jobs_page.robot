*** Settings ***
Resource  ../variables/test_for_render_jobs_constants.robot

*** Keywords ***
#--- When ---#
User Completes Share Tribute Via "${e_BUTTON_NAME}"
  Wait Until Element Should Be Visible
  ...  ${SHARE_WITH}
  Click Element  ${${e_BUTTON_NAME}_SHARE}
  Run Keyword  Complete ${e_BUTTON_NAME} Share

#--- Then ---#
User Should Successfully Posted Tribute On Facebook
  User Is In "TEST_FOR_RENDER_JOBS" Page

User Should Successfully Posted Tribute On Twitter
  Wait Until Element Should Be Visible
  ...  ${FIRST_STREAM_ITEM}
  Element Should Contain
  ...  ${FIRST_STREAM_ITEM}  ${s_RANDOM_STRING}

#--- INTERNAL KEYWORDS ---#
Complete Facebook Share
  Import Resource File  sign_in_page
  Login Via "Facebook"
  Select Window  new
  Click Element  ${POST_TO_FACEBOOK_BUTTON}
  Select Window  main

Complete Twitter Share
  User Is In "TWITTER_LOGIN" Page
  Wait Until Element Should Be Visible
  ...  ${TWITTER_LOGIN_CONTAINER}
  Input Text  ${TWITTER_USERNAME_FIELD}  ${TWITTER_ACCOUNT}
  Input Text  ${TWITTER_PASSWORD_FIELD}  ${TWITTER_PASSWORD}
  Click Element  ${TWITTER_SIGN_IN_BUTTON}
  Wait Until Element Should Be Visible
  ...  ${TWITTER_POST_TEXTAREA}
  ${t_originalText}=  Get Text  ${TWITTER_POST_TEXTAREA}
  ${t_randomString}=  Generate Random String  4  [LETTERS]
  ${t_newText}=  Set Variable  ${t_originalText} ${t_randomString}
  Input Text  ${TWITTER_POST_TEXTAREA}  ${t_newText}
  Click Element  ${TWITTER_TWEET_BUTTON}
  Set Suite Variable  ${s_RANDOM_STRING}  ${t_randomString}

#--- Teardown ---#
Delete Robot Twitter Post
  ${t_notExist}=  Run Keyword And Return Status
  ...  Variable Should Not Exist  ${s_RANDOM_STRING}
  Run Keyword If  ${t_notExist}  Run Keywords
  ...  Capture Page Screenshot
  ...  AND  FAIL  msg=Not Successful
  Click Element  ${FIRST_STEAM_ITEM_OPTION}
  Wait Until Element Should Be Visible
  ...  ${TWITTER_STEAM_OPTIONS}
  @{t_getElements}=  Get WebElements
  ...  ${TWITTER_STEAM_OPTIONS} li
  :FOR  ${items}  IN  @{t_getElements}
  \  ${t_text}=  Get Text  ${items}
  \  Run Keyword If  '${t_text}'=='Delete Tweet'
  ...  Run Keywords
  ...  Click Element  ${items}
  ...  AND  Exit For Loop
  Set Selenium Speed  0.5 s
  Wait Until Element Should Be Visible
  ...  ${TWITTER_CONFIRM_MODAL}
  Click Element  ${TWITTER_CONFIRM_DELETE_BUTTON}
  Element Should Not Contain
  ...  ${FIRST_STREAM_ITEM}  ${s_RANDOM_STRING}
  Set Selenium Speed  0 s