*** Settings ***
Resource  ../variables/about_us_constants.robot

*** Keywords ***
#--- When ---#
User Clicks "${e_LABEL}" "${e_TYPE}" On About Page
  Wait Until Element Should Be Visible  ${ABOUT_US${e_LABEL}_${e_TYPE}}
  Focus  ${ABOUT_US${e_LABEL}_${e_TYPE}}
  Click Element  ${ABOUT_US${e_LABEL}_${e_TYPE}}
  Run Keyword If  '${e_LABEL}'=='VIDEO_MONTAGE'
  ...  Select Window  new

#--- Then ---#
Video Player Should Be Visible
  Wait Until Element Should Be Visible  ${VIDEO_CONTAINER}

Manifesto Modal Should Be Visible
  Wait Until Element Should Be Visible  ${MANIFESTO_CONTAINER}

Intercom Messenger Should Be Visible
  Import Resource File  manage_page
  manage_page.Intercom Messenger Should Be Visible

#--- Teardown ---#
Close Video Player
  Press Key  ${VIDEO_CONTAINER}  \\27

Close Manifesto Modal
  Set Selenium Speed  0.5s
  Manifesto Modal Should Be Visible
  Press Key  ${MANIFESTO_CONTAINER}  \\27
  Set Selenium Speed  0
