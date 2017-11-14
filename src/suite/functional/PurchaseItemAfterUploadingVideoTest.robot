*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute until purchasing item on success modal
Force Tags  smoke
Default Tags  PurchaseItemAfterUploadingVideoTest  upload
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User Has Successfully Uploaded Video Via Email
  Given User Is In "CREATED_TRIBUTE" Page
  When User Uploads "Video" Via "Email"
  And User Purhcase Gift Item On Success Modal
  Then "PURCHASE" Page Should Be Loaded Successfully
