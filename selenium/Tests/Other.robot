*** Settings ***
Library          SeleniumLibrary
Test Setup       Open Browser    ${URL}    ${browser}    
Test Teardown    Close Browser
Resource         ../Resources/LoginPage.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
${browser}    Chrome

*** Test Cases ***
Open web    ${browser}
    [Documentation]        odkaz na testcase
    Sleep    1  

Add product to cart then do checkout
    [Documentation]
    Login    ${username}    ${password}

Filter products
    [Documentation]
    Login    ${username}    ${password}

Add multiple products to cart then remove product
    [Documentation]
    Login    ${username}    ${password}

*** Comments ***
robot -v browser:Chrome test.robot