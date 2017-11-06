*** Settings ***
Library  Selenium2Library
Resource  launcher.robot
Resource  web_helper_constants.robot
Resource  ../variables/location_extension_constants.robot

*** Keywords ***
User Is In "${e_URL}" Page
  ${t_lowerCase}=  Convert To Lowercase  ${${e_URL}_URL_EXT}
  Wait Until Keyword Succeeds  ${TIMEOUT}  ${INTERVAL}
  ...  Location Should Contain  ${t_lowerCase}

"${e_URL}" Page Should Be Loaded Successfully
  User Is In "${e_URL}" Page

"${e_NAME}" Element List Should Be Visible
  :FOR  ${element}  IN  @{${e_NAME}_ELEMENT_LIST}
  \  Wait Until Element Should Be Visible  ${element}

User Navigates Directly To "${e_URL}" Page
  Go To  ${BASE_URL}${${e_URL}_URL_EXT}

Wait Until Element Should Be Visible
  [Arguments]  ${p_element}
  Wait Until Keyword Succeeds  ${TIMEOUT}  ${INTERVAL}
  ...  Element Should Be Visible  ${p_element}

Wait Until Element Should Not Be Visible
  [Arguments]  ${p_element}
  Wait Until Keyword Succeeds  ${TIMEOUT}  ${INTERVAL}
  ...  Element Should Not Be Visible  ${p_element}

Wait And Click Element
  [Arguments]  ${p_element}
  Wait Until Element Should Be Visible  ${p_element}
  Click Element  ${p_element}

Wait Until Element Should Contain
  [Arguments]  ${p_element}  ${p_text}
  Wait Until Keyword Succeeds  ${TIMEOUT}  ${INTERVAL}
  ...  Element Should Contain  ${p_element}  ${p_text}

Upload File
  [Arguments]  ${p_locator}  ${p_fileName}
  ${t_path}=  Normalize Path  ${CURDIR}${/}..${/}testdata${/}${p_fileName}
  Choose File  ${p_locator}  ${t_path}

#=====================#
#  INTERNAL KEYWORDS  #
#=====================#
Get Matching Locator Count
  [Documentation]   This keyword will count all possible elements in the page using jQuery length.
  ...    Do not use ID since it will only return 1 result. Use class as argument.
  [Arguments]    ${p_elementLocator}
  ${t_plainElementLocator}=    Remove Element Locator Type    ${p_elementLocator}
  ${r_elementCount}    Execute Javascript   return jQuery('${t_plainElementLocator}').length
  Log   ${r_elementCount}
  [Return]    ${r_elementCount}

Remove Element Locator Type
  [Documentation]    This keyword will remove the Element locator type and return just the value of the locator
  [Arguments]    ${p_element}
  ${t_newElement}=    Remove String Using Regexp    ${p_element}    ^.*?=
  ${r_removeHTMLElement}=    Set Variable    ${t_newElement}
  [Return]    ${r_removeHTMLElement}

Input Text By Press Key Each Character
  [Documentation]    Gets the current month and returns in word format
  ...    Argument:
  ...    ${p_locator} is the input text field element locator
  ...    ${p_characters} is the input text string
  [Arguments]    ${p_locator}    ${p_characters}
  Set Selenium Speed    .1
  Focus    ${p_locator}
  Mouse Out    ${p_locator}
  @{t_characters}=    Split String To Characters   ${p_characters}
  :FOR   ${t_char}    IN    @{t_characters}
  \    Press Key    ${p_locator}   ${t_char}
  Set Selenium Speed  0

Import Resource File
  [Arguments]  ${p_fileName}
  ${t_keywordPath}=  Normalize Path  ${CURDIR}${/}..${/}keywords
  Import Resource  ${t_keywordPath}/${p_fileName}.robot

#=====================#
#  INTERNAL KEYWORDS  #
#=====================#
User Has Successfully Logged In
  Import Resource File  sign_in_page
  Import Resource File  manage_page
  Launch Tribute Website  ${SIGN_IN_URL_EXT}
  User Submits Login Credentails Via "Tribute"
  User Should Successfully Logs In