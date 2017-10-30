*** Variables ***
${MY_ACCOUNT_CHANGE_PASSWORD_BTN}  css=a[href="/accounts/password/change/"]
#--- change password form ---#
${CHANGE_PASSWORD_CONTAINER}  css=form[action="/accounts/password/change/"]
${CURRENT_PASSWORD_FIELD}  css=#id_oldpassword
${NEW_PASSWORD_FIELD}  css=#id_password1
${REPEAT_PASSWORD_FIELD}  css=#id_password2
${CHANGE_PASSWROD_BTN}  ${CHANGE_PASSWORD_CONTAINER} button
@{CHANGE_PASSWORD_ELEMENT_LIST}
...  ${CURRENT_PASSWORD_FIELD}  ${NEW_PASSWORD_FIELD}
...  ${REPEAT_PASSWORD_FIELD}  ${CHANGE_PASSWROD_BTN}
