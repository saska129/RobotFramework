*** Settings ***
Library   SeleniumLibrary
Library  Collections
Library  String
Resource   ProductsLocators.resource

*** Variables ***
@{itemsList}=   ${lblPrice1Item}  ${lblPrice2Item}  ${lblPrice3Item}  ${lblPrice4Item}  ${lblPrice5Item}  ${lblPrice6Item}  
${priceText}
@{priceText1}
${priceText2}
${priceNumber}
@{prices}
${id}

*** Keywords ***
Open dropdown
   Click Element    ${ddwSorting}
Sort products by price   
   Select From List By Value  ${ddwSorting}    hilo

Get price for all items
  FOR  ${item}   IN   @{itemsList} 
    ${priceText}=    Get Text  ${item}
    @{priceText1}=  Split String   ${priceText}  $
    ${priceText2}=  Set Variable    ${priceText1}[1]
    ${priceNumber}=   Convert To Number   ${priceText2}
    Append To List   ${prices}   ${priceNumber}
   END
Verify elements are sorted by price descending
   # ${priceText}=    Get Text  xPath=//*[@id="inventory_container"]/div/div[1]/div[2]/div[2]/div
   #  @{priceText1}=  Split String   ${priceText}  $
   #  ${priceText2}=  Set Variable    ${priceText1}[1]
   #  ${priceNumberForFirstElement}=   Convert To Number   ${priceText2}
  
   #   ${priceText}=    Get Text  xPath=//*[@id="inventory_container"]/div/div[6]/div[2]/div[2]/div
   #  @{priceText1}=  Split String   ${priceText}  $
   #  ${priceText2}=  Set Variable    ${priceText1}[1]
   #  ${priceNumberForLastElement}=   Convert To Number   ${priceText2}

   #  Should Be True  ${priceNumberForFirstElement}>= ${priceNumberForLastElement}
  
   Get price for all items
   # Should Be True   ${prices}[0]>= ${prices}[1]
   # Should Be True   ${prices}[1]>= ${prices}[2]
   # Should Be True   ${prices}[2]>= ${prices}[3]
   # Should Be True   ${prices}[3]>= ${prices}[4]
   # Should Be True   ${prices}[4]>= ${prices}[5]
    
     FOR  ${number}  IN RANGE    0  5  # 0  1  2  3  4
     ${adding}=   Set Variable  1
     ${IndexOfNextElement}=  Evaluate  ${number}+${adding}
     Should be true   ${prices}[${number}]>= ${prices}[${IndexOfNextElement}]
     END
   
Add a specific product to the cart
    FOR  ${product}  IN  @{btnsAdd}
        Click Button  ${product}
    END
    
Verify that the added product cannot be added to the basket again
    FOR  ${product}  IN  @{btnsAdd}
        Element Should Not Be Visible  ${product}
    END

Remove product
  Click Element   ${RemoveJacket}
Remove added product
   ${IsElementVisible}=   Run Keyword And Return Status   Element Should be Visible  ${RemoveJacket}
   Run Keyword If   ${IsElementVisible}     Remove product

Verify that the product is removed
  Element Should Be Visible  ${btnAddJacket}