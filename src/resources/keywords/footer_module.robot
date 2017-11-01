*** Settings ***
Resource  ../variables/footer_constants.robot

*** Keywords ***
#--- When ---#
User Clicks "${e_SOCIAL_MEDIA}" Social Media On Footer Section
  Wait Until Element Should Be Visible  ${SOCIAL_MEDIA}
  Focus  ${${e_SOCIAL_MEDIA}_SOCIAL_MEDIA_ICON}
  Click Element  ${${e_SOCIAL_MEDIA}_SOCIAL_MEDIA_ICON}
  Select Window  new

#--- Then ---#
"${e_URL}" Social Media Page Should Be Loaded Successfully
  Wait Until Keyword Succeeds  ${TIMEOUT}  ${INTERVAL}
  ...  Location Should Contain  ${${e_URL}_SOCIAL_MEDIA_PAGE}
