*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   EndingLocators.resource

*** Keywords ***
Verify appearance of the Checkout: Complete! label
  Element Should Be Visible  ${lblComplete}


Verify appearance of the Back home button
  Element Should Be Visible  ${btnBackHome}