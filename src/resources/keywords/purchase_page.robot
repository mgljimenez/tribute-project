*** Settings ***
Resource  ../variables/purchase_constants.robot

*** Keywords ***
#--- WHEN ---#
User Added All Purchased Items
  :FOR  ${locator}  IN  @{ADD_TO_CART_LIST}
  \  Wait Until Element Should Not Be Visible
  ...  ${MODAL_CONTAINER}
  \  Click Element  ${locator}
  \  Wait Until Element Should Be Visible
  ...  ${MODAL_CONTAINER}
  \  Click Element  ${MODAL_CLOSE_BUTTON}

#--- THEN ---#
All Items Should Be Purchased
  ${t_visible}=  Run Keyword And Return Status
  ...  Element Should Be Visible  ${MODAL_CONTAINER}
  Run Keyword If  ${t_visible}  Run Keywords
  ...  Click Element  ${MODAL_CLOSE_BUTTON}
  ...  AND  Wait Until Element Should Be Visible
  ...  ${MODAL_CONTAINER}
  Set Selenium Speed  0.5 s
  Wait Until Element Should Be Visible
  ...  ${CART_BUTTON}
  Click Element  ${CART_BUTTON}
  Set Selenium Speed  0 s
  ${t_count}=  Get Matching Locator Count  ${QUANTITY_CONTAINER}
  Should Be True  '${t_count}'=='5'