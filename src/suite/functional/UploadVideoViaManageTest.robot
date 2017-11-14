*** Settings ***
Documentation  This test suite will test posting of DIY
...  tribute until posting of video via manage tab
Force Tags  smoke
Default Tags  UploadVideoViaManageTest  upload
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User Has Successfully Uploaded Video Via Facebook
  Given User Is In "CREATED_TRIBUTE" Page
  When User Uploads Video Via Manage Tab
  Then User Should Successfully Uploaded Video On Manage Tribute
