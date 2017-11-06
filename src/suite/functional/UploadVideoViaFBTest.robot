*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute until posting of video via facebook
Force Tags  smoke
Default Tags  UploadVideoViaFBTest  upload
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

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

User Has Successfully Uploaded Video Via Facebook
  Given User Is In "CREATED_TRIBUTE" Page
  When User Uploads "Video" Via "Facebook"
  Then User Should Sucessfully Uploaded Video
