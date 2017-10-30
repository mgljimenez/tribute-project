*** Settings ***
Resource  ../variables/home_constants.robot

*** Keywords ***
#--- WHEN ---#
User Submits "${e_TYPE}" Schedule Reminder
  Wait And Click Element  ${SCHEDULE_REMINDER_LINK}
  "SCHEDULE_REMINDER" Element List Should Be Visible
  ${t_rString}=  Generate Random String  8  [LETTERS]
  Input Text  ${SCHEDULE_OCCASION_FIELD}  ${t_rString}
  Select One Month Schedule Date
  Run Keyword If  "${e_TYPE}"=="Facebook"  Run Keywords
  ...  Click Element  ${SCHEDULE_FACEBOOK_BTN}
  ...  AND  Login Via "Facebook"
  ...  ELSE  Run Keywords
  ...  Click Element  ${SCHEDULE_EMAIL_LINK}
  ...  AND  Wait Until Element Is Visible  ${SCHEDULE_EMAIL_FIELD}
  ...  AND  Input Text  ${SCHEDULE_EMAIL_FIELD}  ${EMAIL_RECIPIENT}
  ...  AND  Click Element  ${SCHEDULE_CREATE_REMINDER_BTN}

User Signs Up For Newsletter
  Wait Until Element Should Be Visible  ${NEWSLETTER_FIELD}
  Input Text  ${NEWSLETTER_FIELD}  ${TRIBUTE_ACCOUNT}
  Click Element  ${NEWSLETTER_SUBMIT_BTN}

#--- THEN ---#
User Should Successfully Creates A Scheduled Reminder
  Wait Until Element Is Visible  ${SUCESS_SCHEDULED_MODAL}

User Should See Newsletter Success Message
  Wait Until Element Is Visible  ${NEWSLETTER_SUCCESS_MSG}

#--- INTERNAL KEYWORDS ---#
Select One Month Schedule Date
  Click Element  ${SCHEDULE_OCCASION_DATE_FIELD}
  Wait Until Element Is Visible  ${DATEPICKER_CONTAINER}
  ${t_rowCount}=  Get Matching Locator Count  ${DAY_ROW_CONTAINER}
  :FOR  ${index}  IN RANGE  0  ${t_rowCount}
  \  ${t_element}=  Get Today Container  ${DAY_ROW_CONTAINER}:eq(${index})
  \  ${t_isNotEmpty}=  Run Keyword And Return Status
  ...  Should Not Be Empty  ${t_element}
  \  Run Keyword If  ${t_isNotEmpty}  Run Keywords
  ...  Click Element  ${PICKER_NEXT_BTN}
  ...  AND  Click Element  ${t_element}
  ...  AND  Exit For Loop

Get Today Container
  [Arguments]  ${p_locator}
  ${t_day}=  Get Matching Locator Count  ${p_locator} td
  :FOR  ${index}  IN RANGE  0  ${t_day}
  \  ${t_locator}=  Set Variable  ${p_locator} td:eq(${index})
  \  ${t_attr}=  Get Element Attribute  ${t_locator}@class
  \  ${t_attrExist}=  Run Keyword And Return Status
  ...  Should Contain  ${t_attr}  ui-datepicker-today
  \  ${t_locator}=  Run Keyword If  ${t_attrExist}  Run Keywords
  ...  Set Variable  ${p_locator} td:eq(${index})
  ...  AND  Exit For Loop
  [Return]  ${t_locator}