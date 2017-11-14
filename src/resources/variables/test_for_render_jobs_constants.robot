*** Variables ***
${SHARE_WITH}  jquery=.tribute-share
${FACEBOOK_SHARE}  ${SHARE_WITH} .share-option:eq(1)
${TWITTER_SHARE}  ${SHARE_WITH} .share-option:eq(2)
${EMAIL_SHARE}  ${SHARE_WITH} .share-option:eq(3)

#--- facebook elements ---#
${POST_TO_FACEBOOK_BUTTON}  css=button[name="__CONFIRM__"]

#--- twitter elements ---#
${TWITTER_LOGIN_CONTAINER}  jquery=.signin-wrapper
${TWITTER_USERNAME_FIELD}  jquery=input.js-username-field
${TWITTER_PASSWORD_FIELD}  jquery=input.js-password-field
${TWITTER_SIGN_IN_BUTTON}  jquery=button.submit
${TWITTER_POST_TEXTAREA}  css=textarea#status
${TWITTER_TWEET_BUTTON}  css=input[value="Tweet"]
${FIRST_STREAM_ITEM}  css=li.stream-item:first-of-type
${FIRST_STEAM_ITEM_OPTION}  ${FIRST_STREAM_ITEM} .Icon--caretDownLight
${TWITTER_STEAM_OPTIONS}  jquery=ul[role="menu"]:eq(0)
${TWITTER_CONFIRM_MODAL}  css=#delete-tweet-dialog-dialog
${TWITTER_CONFIRM_DELETE_BUTTON}  ${TWITTER_CONFIRM_MODAL} .delete-action