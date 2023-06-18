*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   CheckoutLocators.resource

*** Variables ***


*** Keywords ***

Verify that the Checkout title is shown
  Element Should Be Visible   ${lblCheckout}
#   Wait Until Keyword Succeeds  5s  1s  Element Should Be Visible   ${lblCart}
Verify that the First name input field is shown
  Element Should Be Visible   ${txtFirstName}

Verify that the Last Name input field is shown
  Element Should Be Visible   ${txtLastName}

Verify that the Zip input field is shown
  Element Should Be Visible   ${txtZip}

Verify that the Continue button is shown
  Element Should Be Visible   ${btnContinue}

Enter First name
  [Arguments]   ${FirstName}
  Input Text   ${txtFirstName}   ${FirstName}
Enter Last name
  [Arguments]   ${LastName}
  Input Text   ${txtLastName}   ${LastName}
Enter Zip
  [Arguments]   ${Zip}
  Input Text   ${txtZip}   ${Zip}

Submit information
  Click Button  ${btnContinue}
