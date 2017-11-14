*** Settings ***
Documentation  This test suite will test posting
...  of DIY tribute and adding to Cart
Force Tags  smoke
Default Tags  AddToCartTributeTest
Suite Setup  User Has Successfully Posted DIY Tribute
Suite Teardown  Close All Browsers
Resource  ../../resources/common/global_setup.robot
Resource  ../../resources/keywords/start_page.robot

*** Test Cases ***
User Has Successfully Purchased Items
  Given User Is In "CREATED_TRIBUTE" Page
  When User Purchases Items For Created Tribute
  Then User Should Successfully Purchased Items
  When User Purchases "HIGHLIGHT_REEL" For Created Tribute
  Then Intercom Messenger Should Be Visible
