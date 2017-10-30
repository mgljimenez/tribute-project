*** Variables ***
${SIGN_IN_FACEBOOK_BUTTON}  css=#login-continue-with-facebook
#--- email/tribute login ---#
${TRIBUTE_EMAIL_FIELD}  css=#id_login
${TRIBUTE_PASSWORD_FIELD}  css=#id_password
${TRIBUTE_SIGN_IN_BUTTON}  css=[action="/accounts/login/"] button.button-green
${TRIBUTE_FORGOT_PASSWORD_LINK}  css=a[href="/accounts/password/reset/"]
@{SIGN_IN_ELEMENT_LIST}
...  ${SIGN_IN_FACEBOOK_BUTTON}  ${TRIBUTE_EMAIL_FIELD}
...  ${TRIBUTE_PASSWORD_FIELD}  ${TRIBUTE_SIGN_IN_BUTTON}
#--- facebook login ---#
${FACEBOOK_LOGIN_CONTAINER}  css=body.login_page
${FACEBOOK_EMAIL_FIELD}  css=#email
${FACEBOOK_PASSWORD_FIELD}  css=#pass
${FACEBOOK_SIGN_IN_BUTTON}  css=#loginbutton input
#--- reset password form ---#
${RESET_PASSWORD_CONTAINER}  css=form[action="/accounts/password/reset/"]
${RESET_PASSWORD_EMAIL_FIELD}  ${RESET_PASSWORD_CONTAINER} #id_email
${RESET_PASSWORD_RESET_MY_PASSWORD_BTN}  ${RESET_PASSWORD_CONTAINER} button
#--- reset success ---#
${RESET_SUCCESS_SUPPORT_LINK}  css=#account a.text-info