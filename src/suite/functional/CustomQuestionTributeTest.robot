*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute with custom question
Force Tags  smoke
Default Tags  CustomQuestionTributeTest
Suite Setup  User Has Successfully Logged In
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY
${QUESTION_ONE}  Custom
${QUESTION_TWO}  Custom

*** Test Cases ***
User Has Successfully Posted A DIY Tribute
  [Setup]  User Navigates Directly To "START" Page
  Given User Is In "START" Page
  When User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  And User SubmitS Customized Question  ${QUESTION_ONE}  ${QUESTION_TWO}
  And User Sends Email Invitation
  Then User Should Successfully Posted Live Tribute
