*** Keywords ***
#--- When ---#
User Sends Email Invitation
  Wait And Click Element  ${EMAIL_ICON_INVITATION}
  Wait And Click Element  ${DONE_INVITATION_LINK}

User Sends Manual Invitation
  ${t_rString}=  Generate Random String  8  [LETTERS]
  ${t_uniqueEmail}=  Set Variable
  ...  ${EMAIL_NAME}+${t_rString}${EMAIL_PROVIDER}
  Wait And Click Element  ${EMAIL_ICON_INVITATION}
  Wait Until Element Should Be Visible  ${DONE_INVITATION_LINK}
  Click Element  ${MANUAL_ENTER_CONTACT_LINK}
  Wait Until Element Should Be Visible  ${MANUAL_INVITE_FORM}
  Input Text  ${MANUAL_NAME_FIELD}  ${t_rString}
  Input Text  ${MANUAL_EMAIL_FIELD}  ${t_uniqueEmail}
  Click Element  ${MAUNL_INVITE_ADD_BUTTON}
  Wait Until Element Should Be Visible  ${INVITED_EMAIL}
  Click Element  ${SEND_INVITATION_BUTTON}

User Sends Email Invites Via CSV Upload
  Wait And Click Element  ${EMAIL_ICON_INVITATION}
  Wait And Click Element  ${IMPORT_CONTACTS_BTN}
  Wait Until Element Should Be Visible
  ...  ${CLOUD_SPONGE_WIDGET}
  Click Element  ${GENERATE_CSV_WIDGET_BTN}
  Wait Until Element Should Be Visible
  ...  ${CSV_UPLOAD_CONTAINER}
  Upload File  ${CSV_UPLOAD}  sampleCSV.csv
  Wait And Click Element  ${SELECT_ALL_CONTACT}
  Wait And Click Element  ${GET_CONTACTS_BUTTON}
  Wait Until Element Should Not Be Visible
  ...  ${CLOUD_SPONGE_WIDGET}
  Wait Until Element Should Be Visible
  ...  ${LIST_OF_INVITES}
  Click Element  ${SEND_INVITATION_BUTTON}

User Views Invitation Email Sent
  Wait And Click Element  ${EMAIL_ICON_INVITATION}
  Wait Until Element Should Be Visible  ${DONE_INVITATION_LINK}
  Click Element  ${INVITATION_SENT_EMAIL_LINK}

User Views Instruction To Upload Contacts
  Wait And Click Element  ${EMAIL_ICON_INVITATION}
  Wait Until Element Should Be Visible  ${DONE_INVITATION_LINK}
  Click Element  ${UPLOAD_CSV_LINK}

#--- THEN ---#
Invited User On CSV FIle Should Be Visible
  Wait Until Element Should Be Visible
  ...  ${LIST_OF_INVITED}