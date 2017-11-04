*** Variables ***
${SOCIAL_MEDIA}  jquery=.footer-social
${INSTAGRAM_SOCIAL_MEDIA_ICON}  ${SOCIAL_MEDIA} a:eq(0)
${FACEBOOK_SOCIAL_MEDIA_ICON}  ${SOCIAL_MEDIA} a:eq(1)
${TWITTER_SOCIAL_MEDIA_ICON}  ${SOCIAL_MEDIA} a:eq(2)
${YOUTUBE_SOCIAL_MEDIA_ICON}  ${SOCIAL_MEDIA} a:eq(3)
${TERMS_OF_SERVICES_LINK}  css=a[href*="${TERMS_OF_SERVICES_URL_EXT}"]
${PRIVACY_POLICY_LINK}  css=a[href*="${PRIVACY_POLICY_URL_EXT}"]
#--- SOCIAL MEDIA PAGE(s) ---#
${INSTAGRAM_SOCIAL_MEDIA_PAGE}  https://www.instagram.com/wetribute/
${FACEBOOK_SOCIAL_MEDIA_PAGE}  https://www.facebook.com/wetribute
${TWITTER_SOCIAL_MEDIA_PAGE}  https://twitter.com/wetribute
${YOUTUBE_SOCIAL_MEDIA_PAGE}  https://www.youtube.com/channel/UCEKav4rSd2TKIir7KpRBTkQ
