*** Settings ***
Library          SeleniumLibrary
Test Setup       Open Browser    ${URL}    ${browser}    
Test Teardown    Close Browser
Resource         ../Resources/Login.robot
Resource         ../Resources/Products.robot
Resource         ../Resources/Checkout.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
${browser}    Chrome

*** Test Cases ***
Add product to cart then do checkout
    [Documentation]
    Login    ${username}    ${password}
    Add product to cart and observe cart badge
    Navigate to cart
    Element Should Be Visible    ${remove_button}
    Click Element    ${checkout_button}
    Input your information and continue checkout
    #Observe overview
    Finish checkout
    Navigate to home

Add multiple products to cart then remove product
    [Documentation]
    Login    ${username}    ${password}
