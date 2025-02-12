*** Settings ***
Library      SeleniumLibrary
Variables    ../Locators/Menu.py
Variables    ../Locators/LoginPage.py

*** Keywords ***
Open Menu
    Click Element    ${menu_button}  
    Wait Until Element Is Visible    ${menu_close_button}  

Close Menu
    Click Element    ${menu_close_button}  
    Wait Until Element Is Visible    ${menu_button}  

Logout
    Open Menu
    Click Element    ${logout_button}
    Wait Until Element Is Visible    ${login_button}
