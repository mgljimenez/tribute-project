*** Keywords ***
#--- When ---#
User Views Tribute "${e_FIGURE}"
  Click Element  ${INVITE_MODAL_CLOSE_ICON}
  Wait Until Element Should Not Be Visible  ${INVITE_MODAL}
  Click Element  ${${e_FIGURE}_FIGURE}

#--- Then ---#
User Should Successfully Posted Live Tribute
  Wait Until Element Should Be Visible  ${INVITE_MODAL}
  Wait Until Element Should Be Visible  ${CUSTOMIZE_AND_SEND_INVITE_BTN}

Link Should Be Successfully Copied
  Wait Until Element Should Be Visible  ${SHARE_MODAL_SUCCESS_MESSAGE}

Tip Section Should Be Visible
  Wait Until Element Should Be Visible  ${TIP_CONTAINER}
  Wait Until Element Should Be Visible  ${TIP_VIDEO}
