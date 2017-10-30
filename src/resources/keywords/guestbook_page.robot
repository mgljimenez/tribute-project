*** Settings ***
Resource  ../variables/guestbook_constants.robot

*** Keywords ***
#--- When ---#
User Starts A Guestbook
  ${t_exist}=  Run Keyword And Return Status
  ...  Element Should Be Visible  ${WHAT_MORE_INFO_MODAL}
  Run Keyword If  ${t_exist}
  ...  Click Element  ${WHAT_MORE_INFO_CLOSE_ICON}
  Click Element  ${GUESTBOOK_START_A_TRIBUTE_GUESTBOOK_BTN}
  Set Suite Variable  ${s_GUESTBOOK_FLOW}  Exist