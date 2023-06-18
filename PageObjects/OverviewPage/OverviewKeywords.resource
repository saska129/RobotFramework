*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   OverviewLocators.resource

*** Keywords ***

Verify that the Overview title is shown
  Element Should Be Visible  ${lblOverview}

Verify that the Finish button is shown
  Element Should Be Visible  ${btnFinish}

Verify that the Overview Page is opened
  Verify that the Overview title is shown
  Verify that the Finish button is shown

Click the Finish button
  Click Button  ${btnFinish}