*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   ../PageObjects/ProductsPage/ProductsKeywords.resource
Resource   ../PageObjects/LoginPage/LoginKeywords.resource
Suite Setup  Run Keywords
...    Open saucedemo website
...    AND     Verify appearance of Login Page
...    AND     Enter valid credentials
...    AND     Login to the application
...    AND     Verify user is logged in
...    AND     Sort products by price
...    AND     Get price for all items
Test Template  Verify elements are sorted by price descending
Suite Teardown    Close All Browsers  

*** Variables ***
@{itemsList}=   ${lblPrice1Item}  ${lblPrice2Item}  ${lblPrice3Item}  ${lblPrice4Item}  ${lblPrice5Item}  ${lblPrice6Item}  
${priceText}
@{priceText1}
${priceText2}
${priceNumber}
@{prices}
${id}

*** Keywords ***
Verify elements are sorted by price descending
   [Arguments]  ${priceOfItem1}   ${priceOfItem2}

     Should be true   ${priceOfItem1}>= ${priceOfItem1}

*** Test Cases *** 

Verify that the first product is more expensive than the second     ${prices}[0]      ${prices}[1]
Verify that the second product is more expensive than the third     ${prices}[1]      ${prices}[2]
Verify that the third product is more expensive than the fourth     ${prices}[2]      ${prices}[3]
Verify that the fourth product is more expensive than the fifth     ${prices}[3]      ${prices}[4]
Verify that the fifth product is more expensive than the sixth      ${prices}[4]      ${prices}[5]