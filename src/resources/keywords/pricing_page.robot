*** Settings ***
Resource  ../variables/pricing_constants.robot

*** Keywords ***
#--- When ---#
User Clicks "${e_LABEL}" On "${e_CONTAINER}" Option
  Wait Until Element Should Be Visible  ${PRICING_${e_LABEL}_${e_CONTAINER}}
  Focus  ${PRICING_${e_LABEL}_${e_CONTAINER}}
  Click Element  ${PRICING_${e_LABEL}_${e_CONTAINER}}

#--- Then ---#
Intercom Messenger Should Be Visible
  Import Resource File  manage_page
  manage_page.Intercom Messenger Should Be Visible
