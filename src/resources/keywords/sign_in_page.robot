*** Settings ***
Resource  ../variables/sign_in_constants.robot

*** Keywords ***
#---  When  ---#
User Submits Login Credentails Via "${e_ENTRY}"
  "SIGN_IN" Element List Should Be Visible
  Run Keyword If  "${e_ENTRY}"=="Facebook"
  ...  Click Element  ${SIGN_IN_FACEBOOK_BUTTON}
  Login Via "${e_ENTRY}"

"${e_EMAIL}" Resets The Passwords
  Click Element  ${TRIBUTE_FORGOT_PASSWORD_LINK}
  Wait Until Element Is Visible  ${RESET_PASSWORD_CONTAINER}
  Input Text  ${RESET_PASSWORD_EMAIL_FIELD}  ${e_EMAIL}
  Click Element  ${RESET_PASSWORD_RESET_MY_PASSWORD_BTN}

#--- Then ---#
User Should Successfully Send Request To Reset Password
  Wait Until Element Should Not Be Visible  ${RESET_PASSWORD_CONTAINER}

#--- facebook login ---#
Login Via "${e_TYPE}"
  Run Keyword If  "${e_TYPE}"=="Facebook"  Run Keywords
  ...  Select Window  new
  ...  AND  Wait Until Element Is Visible  ${FACEBOOK_LOGIN_CONTAINER}
  Input Text  ${${e_TYPE}_EMAIL_FIELD}  ${${e_TYPE}_ACCOUNT}
  Input Text  ${${e_TYPE}_PASSWORD_FIELD}  ${${e_TYPE}_PASSWORD}
  Click Element  ${${e_TYPE}_SIGN_IN_BUTTON}
  Select Window  main
  Set Suite Variable  ${s_EMAIL_ADDRESS}  ${${e_TYPE}_ACCOUNT}
