*** Settings ***
Library      SeleniumLibrary
Variables    ../Locators/Login.py
Variables    ../Locators/Menu.py

*** Variables ***
${username}    standard_user
${password}    secret_sauce

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Input Text    ${username_input}    ${username}
    Input Text    ${password_input}    ${password}
    Click Element    ${login_button}

Check login error
    [Arguments]    ${error}
    Wait Until Element Is Visible    ${error}
    Element Should Be Visible    ${login_button}

*** Comments ***
