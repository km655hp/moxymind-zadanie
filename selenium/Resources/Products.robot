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

Add multiple products to cart
    [Arguments]    ${products_number}
    FOR    ${index}    IN RANGE    ${products_number}
        Click Element    ${add_to_cart_button}
    END
    
Remove product from cart
    ${badge_before}=    Get Text    ${cart_badge}
    Click Element    ${remove_button}  
    IF    ${badge_before} == 1
        Element Should Not Be Visible    ${cart_badge}
    ELSE
        ${badge_after}=    Get Text    ${cart_badge}
        ${expected_value}=     Evaluate    int(${badge_before}) - 1
        Should Be Equal As Integers    ${expected_value}    ${badge_after}
    END 
