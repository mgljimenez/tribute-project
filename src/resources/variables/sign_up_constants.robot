*** Variables ***
${SIGN_UP_FACEBOOK_BTN}  css=.button-fbblue
${SIGN_UP_FIRST_NAME_FIELD}  css=input#id_first_name
${SIGN_UP_LAST_NAME_FIELD}  css=input#id_last_name
${SIGN_UP_EMAIL_FIELD}  css=input#id_email
${SIGN_UP_PASSWORD_FIELD}  css=input#id_password1
${SIGN_UP_CONFIRM_PASSWORD_FIELD}  css=input#id_password2
${SIGN_UP_SIGN_UP_BTN}  css=button#signup-button
@{SIGN_UP_ELEMENT_LIST}
...  ${SIGN_UP_FIRST_NAME_FIELD}  ${SIGN_UP_LAST_NAME_FIELD}
...  ${SIGN_UP_EMAIL_FIELD}  ${SIGN_UP_PASSWORD_FIELD}
...  ${SIGN_UP_CONFIRM_PASSWORD_FIELD}  ${SIGN_UP_SIGN_UP_BTN}