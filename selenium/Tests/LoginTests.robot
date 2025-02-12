*** Settings ***
Library          SeleniumLibrary
Test Setup       Open Browser    ${URL}    ${browser}    
Test Teardown    Close Browser
Resource         ../Resources/Login.robot
Resource         ../Resources/Menu.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
${browser}    Chrome
${username_locked}    locked_out_user
${username_incorrect}    user123

*** Test Cases ***
Successful login and logoout
    [Documentation]    Login with correct credentials and then logout user
    Login    ${username}    ${password}
    Wait Until Element Is Visible    ${menu_button}
    Logout

Login with lockout user and incorrect credentials
    [Documentation]    Login with locked out credentials and check error
    Login    ${username_locked}    ${password}
    Check login error    ${login_locked_error}
    Login    ${username_incorrect}    ${password}
    Check login error    ${incorrect_credentials_error}

*** Comments ***
EXAMPLE: run tests on different browsers
Open web testcase    ${browser}
    Sleep    1  

robot -v browser:Chrome selenium/Tests/LoginTests.robot
robot -v browser:Firefox selenium/Tests/LoginTests.robot