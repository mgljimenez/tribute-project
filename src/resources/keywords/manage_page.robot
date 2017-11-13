*** Settings ***
Resource  manage_email_invitation_form.robot
Resource  manage_created_tribute_form.robot
Resource  manage_settings_form.robot
Resource  ../variables/manage_constants.robot
Resource  ../variables/logged_in_header_constants.robot

*** Keywords ***
#--- When ---#
User Submit Customized Tribute
  User Should Be On Customized Your Tribute
  Click Element  ${CUSTOMIZED_CONTINUE_BUTTON}

User SubmitS Customized Question
  [Arguments]  ${p_questionOne}=${EMPTY}  ${p_questionTwo}=${EMPTY}
  ${t_rString}=  Generate Random String  8  [LETTERS]
  Wait Until Element Should Be Visible  ${QUESTION_ONE_DD}
  Wait Until Element Should Be Visible  ${QUESTION_TWO_DD}
  Select From List By Label  ${QUESTION_ONE_DD}  ${p_questionOne}
  Select From List By Label  ${QUESTION_TWO_DD}  ${p_questionTwo}
  Run Keyword If  '${p_questionOne}'!='${EMPTY}'
  ...  Input Text  ${QUESTION_ONE_FIELD}  ${t_rString}
  Run Keyword If  '${p_questionTwo}'!='${EMPTY}'
  ...  Input Text  ${QUESTION_TWO_FIELD}  ${t_rString}
  Click Element  ${CUSTOMIZED_CONTINUE_BUTTON}

User Upgrades Created Tribute
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Click Element  ${MANAGE_UPGRADE_LINK}
  Wait Until Element Should Be Visible  ${UPGRADE_MODAL}
  Click Element  ${PACKAGE_DIY_OPTION}
  Click Element  ${UPGRADE_BTN}

User Goes To FAQ Page
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Click Element  ${MANAGE_FAQ_BUTTON}
  Select Window  new

User Invites User Via Upload CSV
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Click Element  ${MANAGE_UPGRADE_LINK}

User Purchases "${e_ITEM}" For Created Tribute
  Focus  ${${e_ITEM}_ITEM}
  Click Element  ${${e_ITEM}_ITEM}

User Purchases Items For Created Tribute
  User Goes To Manage Tribute Page
  Wait Until Element Should Be Visible  ${CHECKOUT_SECTION}
  :FOR  ${locator}  IN  @{ADD_TO_CART_ITEM_LOCATORS}
  \  Focus  ${locator}
  \  Click Element  ${locator}

User Upgrades Created Guestbook Tribute To "${e_UPGRADE_TYPE}"
  Click Element  ${INVITE_MODAL_CLOSE_ICON}
  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Wait And Click Element  ${UPGRADE_SERVICE}
  Wait Until Element Should Be Visible  ${UPGRADE_GUESTBOOK_MODAL}
  ${t_count}=  Get Matching Locator Count  ${PACKAGE_OPTION}
  :FOR  ${index}  IN RANGE  0  ${t_count}
  \  ${t_getText}=  Get Text  ${UPGRADE_MODAL_TEXT_OPTION}:eq(${index})
  \  Run Keyword If  '${t_getText}'=='${e_UPGRADE_TYPE}'  Run Keywords
  ...  Click Element  ${PACKAGE_OPTION}:eq(${index})
  ...  AND  Exit For Loop
  Click Element  ${UPGRADE_BTN}

#- middle-stripe container -#
User Sends Facebook Message
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Wait And Click Element  ${MANAGE_SEND_FACEBOOK_MESSAGE_BTN}

User Copies URL On Manage Tribute
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Wait And Click Element  ${MANAGE_COPY_LINK_BTN}
  Wait Until Element Should Be Visible  ${SHARE_MODAL}
  Click Element  ${SHARE_MODAL_COPY_LINK_BTN}

User Sends Reminders To Invited Emails
  Set Selenium Speed  0.5 s
  Wait And Click Element  ${MANAGE_TRIBUTE_HEADER_LINK}
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Wait And Click Element  ${MANAGE_SEND_REMINDER_BUTTON}
  Wait Until Element Should Be Visible
  ...  ${SEND_REMINDER_SECTION}
  Click Element  ${SELECT_ALL_EMAILS_LISTED}
  Click Element  ${COMPOSE_MESSAGE_BUTTON}
  Wait And Click Element  ${SEND_REMINDERS_BUTTON}
  Wait Until Element Should Be Visible
  ...  ${SEND_REMINDER_MODAL}
  Click Element  ${SEND_REMINDER_YES_BTN}
  Set Selenium Speed  0 s

#--- Then ---#
Send Reminder Success Modal Should Be Visible
  Wait Until Element Should Be Visible
  ...  ${SEND_REMINDER_SUCCESS}

User Should Successfully Uploaded Video On Manage Tribute
  Wait Until Element Should Be Visible  ${MANAGE_TRIBUTE_HERO}

User Should Successfully Logs In
  "MANAGE_HEADER" Element List Should Be Visible

Tribute Should Be Upgraded
  Wait Until Element Should Not Be Visible  ${MANAGE_UPGRADE_LINK}

Guestbook Tribute Should Be Upgraded
  Wait Until Element Should Be Visible  ${INVITE_MODAL}

Facebook Modal Should Be Visible
  Select Window  new
  ${t_title}=  Log Title
  Should Contain  ${t_title}  Send a Message

Intercom Messenger Should Be Visible
  Wait Until Element Should Be Visible  ${INTERCOM_MESSENGER}

Reminder Sent Table Should Be Visible
  Wait Until Element Should Be Visible  ${REMINDER_SENT_TABLE}

Instruction To Upload CSV Modal Should Be Visible
  Wait Until Element Should Be Visible  ${INSTRUCTION_TO_UPLOAD_CSV_MODAL}

#--- Internal Keyword ---#
User Should Be On Customized Your Tribute
  Wait Until Element Should Be Visible  ${ADD_A_PHOTO_CONTAINER}
  Wait Until Element Should Be Visible  ${CUSTOMIZED_CONTINUE_BUTTON}

User Goes To Manage Tribute Page
  Click Element  ${INVITE_MODAL_CLOSE_ICON}
  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Wait And Click Element  ${MANAGE_TRIBUTE_HEADER_LINK}

Invited Email Row Should Be Visible
  Wait Until Element Should Be Visible  ${LIST_OF_SUCCESSFUL_INVITE}

User Should Successfully Purchased Items
  ${t_count}=  Get Matching Locator Count  ${REMOVE_CART_LOCATOR}
  Should Be Equal  '${t_count}'  '4'