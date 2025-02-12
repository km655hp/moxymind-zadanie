*** Settings ***
Library      SeleniumLibrary
Variables    ../Locators/Products.py
Variables    ../Locators/Checkout.py
Variables    ../Locators/Common.py
*** Variables ***
${first_name}    John
${last_name}     Carrot
${postal_code}   12345

*** Keywords ***
Add product to cart and observe cart badge
    Wait Until Element Is Visible    ${add_to_cart_button}   
    Click Element    ${add_to_cart_button}
    Wait Until Element Is Visible    ${cart_badge}

Navigate to cart
    Wait Until Element Is Visible   ${cart_button}   
    Click Element    ${cart_button}
    Wait Until Element Is Visible    ${checkout_button}  

    