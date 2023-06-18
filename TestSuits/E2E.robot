*** Settings ***
Library  SeleniumLibrary
Resource  ../Helpers/EnvironmentData.resource
Resource  ../PageObjects/LoginPage/LoginKeywords.resource
Resource  ../PageObjects/ProductsPage/ProductsKeywords.resource
Resource  ../PageObjects/CartPage/CartKeywords.resource
Resource  ../PageObjects/CheckOutPage/CheckoutKeywords.resource
Resource  ../PageObjects/OverviewPage/OverviewKeywords.resource
Resource  ../PageObjects/EndingPage/EndingKeywords.resource

Suite Teardown   Close All Browsers

*** Test Cases ***
Verify appearance of Login page 
   Open saucedemo website
   Verify appearance of Login Page

Verify successful login 
  Enter valid credentials
  Login to the application
  Verify user is logged in
  
Verify elements are sorted by price descending
  Sort products by price 
  Verify elements are sorted by price descending

Verify one product cannot be added to the cart twice
    Add a specific product to the cart
    Verify that the added product cannot be added to the basket again
  
Verify that the added product can be removed
    Remove added product
    Verify that the product is removed

Verify Apperance of the Cart page
   Open the Cart page
   Verify the Cart title is shown
   Verify the Quantity label is shown
   Verify the Description label is shown
  
Verify that product can be removed from the cart
    Check that product is in the Cart and remove it
    Verify that the product is removed from the Cart

Verify Appearance of Checkout page
   Open the Checkout Page
   Verify that the Checkout title is shown
   Verify that the First name input field is shown
   Verify that the Last Name input field is shown
   Verify that the Zip input field is shown
   Verify that the Continue button is shown
  
Verify success of Checkout functionality 
  Enter First name   ${FirstName}
  Enter Last name   ${LastName} 
  Enter Zip   ${Zip}
  Submit information
  Verify that the Overview Page is opened

Verify that Checkout is successfully completed
  Click the Finish button
  Verify appearance of the Checkout: Complete! label
  Verify appearance of the Back home button