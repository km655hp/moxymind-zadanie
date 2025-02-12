*** Settings ***
Library      SeleniumLibrary
Variables    ../Locators/Common.py
Variables    ../Locators/Checkout.py
Variables    ../Locators/Products.py

*** Variables ***
${first_name}    John
${last_name}     Carrot
${postal_code}   12345

*** Keywords ***
Input your information and continue checkout
    Input Text    ${first_name_input}    ${first_name} 
    Input Text    ${last_name_input}     ${last_name} 
    Input Text    ${postal_code_input}    ${postal_code} 
    Click Element    ${continue_button}   

#Observe overview
    #item
    #total 
    #info

Finish checkout
    Wait Until Element Is Visible    ${finish_button}
    Click Element    ${finish_button}
    Wait Until Element Is Visible    ${back_home_button}
    
Navigate to home
    Click Element    ${back_home_button}
    Wait Until Element Is Visible    ${add_to_cart_button}