*** Keywords ***
#--- When ---#
User Views Tribute "${e_FIGURE}"
  Click Element  ${INVITE_MODAL_CLOSE_ICON}
  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Click Element  ${${e_FIGURE}_FIGURE}

User Uploads "${e_UPLOAD_FILE}" Via "${e_MEDIUM}"
  Import Resource File  sign_in_page
  ${t_rString}=  Generate Random String  8  [LETTERS]
  Click Element  ${INVITE_MODAL_CLOSE_ICON}
  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Click Element  ${RECORD_BUTTON}
  Wait Until Element Should Be Visible  ${UPLOAD_MODAL}
  Click Element  ${UPLOAD_VIA_${e_MEDIUM}}
  Run Keyword If  '${e_MEDIUM}'=='Email'  Run Keywords
  ...  Wait Until Element Should Be Visible  ${EMAIL_FORM}
  ...  AND  Input Text  ${UPLOAD_NAME_FIELD}  ${t_rString}
  ...  AND  Input Text  ${UPLOAD_EMAIL_FIELD}  ${TRIBUTE_ACCOUNT}
  ...  AND  Click Element  ${UPLOAD_NEXT_BUTTON}
  ...  ELSE IF  '${e_MEDIUM}'=='Facebook'  Run Keywords
  ...  Login Via "Facebook"
  ...  AND  Wait And Click Element  ${INVITE_MODAL_CLOSE_ICON}
  ...  AND  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Wait Until Element Should Be Visible   ${VIDEO_UPLOAD_CONTAINER}
  Upload File  ${UPLOAD_VIDEO_LINK}  sampleVideo.mp4
  Wait Until Keyword Succeeds  30 s  10 s
  ...  Element Should Be Visible  ${CONFIRM_VIDEO_BUTTON}
  Click Element  ${CONFIRM_VIDEO_BUTTON}

User Uploads Video Via Manage Tab
  ${t_rString}=  Generate Random String  8  [LETTERS]
  User Goes To Manage Tribute Page
  Wait Until Element Should Not Be Visible  ${INITIAL_LOADING}
  Set Selenium Speed  0.5 s
  Wait And Click Element  ${MANAGE_RECORD_UPLOAD_VIDEOS_BUTTON}
  Wait And Click Element  ${UPLOAD_VIDEO_TRIBUTE_MEMBER_ICON}
  Wait Until Element Should Be Visible  ${UPLOAD_VIDEO_CONAINER}
  # Select From List By Label  ${}  ${}
  Input Text  ${UPLOAD_SECTION_NAME_FIELD}  ${t_rString}
  Input Text  ${UPLOAD_SECTION_EMAIL_FIELD}  ${TRIBUTE_ACCOUNT}
  Set Selenium Speed  0 s
  Upload File  ${UPLOAD_SECTION_UPLOAD_VIDEO_BTN}  sampleVideo.mp4
  Wait Until Keyword Succeeds  30 s  10 s
  ...  Element Should Be Visible  ${UPLOAD_SECTION_FINISH_BUTTON}
  Click Element  ${UPLOAD_SECTION_FINISH_BUTTON}

#--- Then ---#
User Should Successfully Posted Live Tribute
  Wait Until Element Should Be Visible  ${INVITE_MODAL}
  Wait Until Element Should Be Visible  ${CUSTOMIZE_AND_SEND_INVITE_BTN}

Link Should Be Successfully Copied
  Wait Until Element Should Be Visible  ${SHARE_MODAL_SUCCESS_MESSAGE}

Tip Section Should Be Visible
  Wait Until Element Should Be Visible  ${TIP_CONTAINER}
  Wait Until Element Should Be Visible  ${TIP_VIDEO}

User Should Sucessfully Uploaded Video
  Wait Until Element Should Be Visible  ${SUCCESS_UPLOADED_MODAL}
