*** Settings ***
Resource  ../variables/my_account_constants.robot

*** Keywords ***
User Changes Password
  Wait And Click Element  ${MY_ACCOUNT_CHANGE_PASSWORD_BTN}
  ${t_rString}=  Generate Random String  8  [LETTERS][NUMBERS]
  Input Text  ${CURRENT_PASSWORD_FIELD}  ${s_PASSWORD}
  Input Text  ${NEW_PASSWORD_FIELD}  ${PASSWORD}
  Input Text  ${REPEAT_PASSWORD_FIELD}  ${PASSWORD}
  Click Element  ${CHANGE_PASSWROD_BTN}