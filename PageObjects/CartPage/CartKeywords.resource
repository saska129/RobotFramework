*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   CartLocators.resource

*** Variables ***
${IsElementVisible}

*** Keywords ***

Open the Cart page
  Click Element  ${linCart} 
Verify the Cart title is shown
    Element Should Be Visible   ${lblCart}

Verify the Quantity label is shown
   Element Should Be Visible   ${lblQuantity}

Verify the Description label is shown
   Element Should Be Visible   ${lblDescription}


Remove product action
  Click Button   ${btnRemoveBackpack}
Check that product is in the Cart and remove it
  ${IsElementVisible}=   Run Keyword And Return Status   Element Should be Visible  ${lblBackpack}
  Run Keyword If   ${IsElementVisible}     Remove product action

Verify that the product is removed from the Cart
  Element Should Not Be Visible   ${lblBackpack}

Open the Checkout Page
  Click Button   ${btnCheckout}