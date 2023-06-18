*** Settings ***
Library  SeleniumLibrary
Resource  ../../Helpers/EnvironmentData.resource
Resource  ../../Helpers/BaseData.resource
Resource  LoginLocators.resource
Resource  ../ProductsPage/ProductsLocators.resource

*** Keywords ***
Open saucedemo website
   Open Browser   ${BaseURL}   ${Browser}
   Maximize Browser Window

Verify appearance of Login Page
    Wait Until Element Is Visible  ${txtUserName}
    Wait Until Element Is Visible  ${txtPassword}
    Wait Until Element Is Visible  ${btnLogin}

Enter valid credentials
   Input Text  ${txtUserName}  ${Valid credentials}[0]
   Input Password   ${txtPassword}   ${Valid credentials}[1]
   
Login to the application
   Click Button   ${btnLogin}
Verify user is logged in
   Wait Until Element Is Visible  ${btnMenu}
   Wait Until Element Is Visible  ${btnAddBackpack}
   Wait Until Element Is Visible  ${btnAddLight}
   Wait Until Element Is Visible  ${btnAddShirt} 
   Wait Until Element Is Visible  ${btnAddJacket} 
   Wait Until Element Is Visible  ${btnAddOnesie} 
   Wait Until Element Is Visible  ${btnAddRedShirt}

  

    