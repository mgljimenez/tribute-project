*** Settings ***
Resource  ../variables/sign_up_constants.robot

*** Keywords ***
#--- WHEN ---#
User Submits Sign Up Credentails Via "${e_ENTRY}"
  "SIGN_UP" Element List Should Be Visible
  Run Keyword If  "${e_ENTRY}"=="Facebook"
  ...  Run Keywords  Import Resource  ${CURDIR}/sign_in_page.robot
  ...  AND  Click Element  ${SIGN_UP_FACEBOOK_BTN}
  ...  AND  Login Via "Facebook"
  ...  ELSE  Submit SignUp Details

#--- INTERNAL KEYWORD ---#
Submit SignUp Details
  Generate Random SignUp Details
  Input Text  ${SIGN_UP_FIRST_NAME_FIELD}  ${s_FIRST_NAME}
  Input Text  ${SIGN_UP_LAST_NAME_FIELD}  ${s_LAST_NAME}
  Input Text  ${SIGN_UP_EMAIL_FIELD}  ${s_EMAIL}
  Input Text  ${SIGN_UP_PASSWORD_FIELD}  ${s_PASSWORD}
  Input Text  ${SIGN_UP_CONFIRM_PASSWORD_FIELD}  ${s_PASSWORD}
  Click Element  ${SIGN_UP_SIGN_UP_BTN}

Generate Random SignUp Details
  ${t_rString}=  Generate Random String  8  [LETTERS]
  Set Suite Variable  ${s_FIRST_NAME}  f${t_rString}
  Set Suite Variable  ${s_LAST_NAME}  l${t_rString}
  Set Suite Variable  ${s_EMAIL}  Chaomarco+${t_rString}@gmail.com
  Set Suite Variable  ${s_PASSWORD}  P${t_rString}