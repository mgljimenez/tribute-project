*** Variables ***
${SHARE_WITH}  jquery=.tribute-share
${FACEBOOK_SHARE}  ${SHARE_WITH} .share-option:eq(1)
${TWITTER_SHARE}  ${SHARE_WITH} .share-option:eq(2)
${EMAIL_SHARE}  ${SHARE_WITH} .share-option:eq(3)

#--- facebook elements ---#
${POST_TO_FACEBOOK_BUTTON}  css=button[name="__CONFIRM__"]
