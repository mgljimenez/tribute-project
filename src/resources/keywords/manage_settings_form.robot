*** Keywords ***
#--- When ---#
User Creates Tribute Password
  ${t_rPassword}=  Generate Random String  8  [LETTERS]
  User Goes To Manage Tribute Page
  Wait And Click Element  ${MANAGE_SETTING_BUTTON}
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Set Selenium Speed  0.5s
  Focus  ${ADD_EDIT_PASSWORD_CB}
  Click Element  ${ADD_EDIT_PASSWORD_CB}
  Input Text  ${SETTING_PASSWORD_FIELD}  ${t_rPassword}
  Set Selenium Speed  0
  Wait And Click Element  ${SAVE_BUTTON}

User Changes Tribute Due Date
  Import Resource File  home_page
  User Goes To Manage Tribute Page
  Wait And Click Element  ${MANAGE_SETTING_BUTTON}
  Set Selenium Speed  0.5s
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Focus  ${SCHEDULE_OCCASION_DATE_FIELD}
  Set Selenium Speed  0
  Select One Month Schedule Date
  Wait And Click Element  ${SAVE_BUTTON}

User Disables All Schedule Options
  Import Resource File  home_page
  User Goes To Manage Tribute Page
  Wait And Click Element  ${MANAGE_SETTING_BUTTON}
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Wait Until Element Should Be Visible  ${SETTING_SCHEDULE_FORM}
  Set Selenium Speed  0.5s
  :FOR  ${locator}  IN  @{SCHEDULE_CB_LOCATORS}
  \  Focus  ${locator}
  \  Unselect Checkbox  ${locator}
  Set Selenium Speed  0s
  Wait And Click Element  ${SAVE_BUTTON}

#--- Then ---#
Success Modal Should Be Visible
  Wait Until Element Should Be Visible  ${UPDATED_SUCCESS_MODAL}