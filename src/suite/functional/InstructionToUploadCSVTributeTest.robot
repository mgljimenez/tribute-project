*** Settings ***
Documentation  This test suite will cover
...  viewing of instruction for uploading contacts
Force Tags  smoke
Default Tags  InstructionToUploadCSVTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Test Cases ***
User Has Successfully Viewed Instruction To Upload CSV
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User Submit Customized Tribute
  And User Views Instruction To Upload Contacts
  Then Instruction To Upload CSV Modal Should Be Visible
