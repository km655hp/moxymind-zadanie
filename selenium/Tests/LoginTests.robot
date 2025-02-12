*** Settings ***
Library          SeleniumLibrary
Test Setup       Open Browser    ${URL}    ${browser}    
Test Teardown    Close Browser
Resource         ../Resources/LoginPage.robot
Resource    ../Resources/Menu.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
${browser}    Chrome
${username_locked}    locked_out_user

*** Test Cases ***
Open web    ${browser}
    [Documentation]        odkaz na testcase
    Sleep    1  

Successful login and logoout
    [Documentation]
    Login    ${username}    ${password}
    Wait Until Element Is Visible    ${menu_button}
    Logout

Login with lockout user
    [Documentation]
    Login    ${username_locked}    ${password}
    Check login error    ${login_locked_error}
    
*** Comments ***
robot -v browser:Chrome test.robot