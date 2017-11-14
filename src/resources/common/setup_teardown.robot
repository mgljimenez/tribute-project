*** Variables ***
${TRIBUTE_TYPE}  Military
${PACKAGE_TYPE}  DIY

*** Keywords ***
User Has Successfully Posted DIY Tribute
  User Has Successfully Logged In
  User Navigates Directly To "START" Page
  User Is In "START" Page
  User Submits A Tribute  ${TRIBUTE_TYPE}  ${PACKAGE_TYPE}
  User Submit Customized Tribute
  User Sends Email Invitation
  User Should Successfully Posted Live Tribute
