*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute until purchasing items on purchase page
Force Tags  smoke
Default Tags  AddPurchaseItemAfterUploadingTest  upload
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot
Resource  ../../resources/keywords/purchase_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Test Cases ***
User Has Successfully Posted A DIY Tribute
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute

User Has Successfully Uploaded Video Via Email
  Given User Is In "CREATED_TRIBUTE" Page
  When User Uploads "Video" Via "Email"
  And User Purhcase Gift Item On Success Modal
  Then "PURCHASE" Page Should Be Loaded Successfully

User Has Successfully Added Puchased Items
  Given User Is In "PURCHASE" Page
  When User Added All Purchased Items
  Then All Items Should Be Purchased
