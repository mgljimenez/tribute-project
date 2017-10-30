*** Settings ***
Resource  launcher_constants.robot

*** Keywords ***
Launch Tribute Website
  [Arguments]  ${p_ext}=${HOME_URL_EXT}  ${p_browser}=${BROWSER}  ${p_alias}=${ALIAS}
  Open Browser  ${BASE_URL}${p_ext}  ${p_browser}  ${p_alias}
  Set Window Size  ${DESKTOP_WIDTH}  ${DESKTOP_HEIGTH}
