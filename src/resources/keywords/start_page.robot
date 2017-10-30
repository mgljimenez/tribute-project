*** Settings ***
Resource  ../variables/start_constants.robot

*** Keywords ***
#--- When ---#
User Submits A Tribute
  [Arguments]  ${p_tributeType}=${EMPTY}  ${p_packageType}=${EMPTY}
  ${t_variableExist}=  Run Keyword And Return Status
  ...  Variable Should Exist  ${s_GUESTBOOK_FLOW}
  #"START" Element List Should Be Visible
  ${t_rString}=  Generate Random String  8  [LETTERS]
  Input Text  ${RECIPIENT_NAME_FIELD}  ${t_rString}
  Run Keyword Unless  ${t_variableExist}  Run Keywords
  ...  Select From List By Label  ${TRIBUTE_TYPE_DD}  ${p_tributeType}
  ...  AND  Click Element  ${PACKAGE_${p_packageType}_ITEM}
  Run Keyword If  "${p_tributeType}"=="Custom"
  ...  Input Text  ${TRIBUTE_CUSTOM_FIELD}  c${t_rString}
  Set Today Date On Calendar
  Click Element  ${CONTINUE_BUTTON}
  Set Suite Variable  ${CREATED_TRIBUTE_URL_EXT}  ${t_rString}

Set Today Date On Calendar
  Click Element  ${SUBMISSION_DEADLINE}
  Wait Until Element Is Visible  css=#ui-datepicker-div
  Click Element  css=.ui-datepicker-today
  Wait Until Element Is Not Visible  css=#ui-datepicker-div

