*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open web
    Open Browser    https://www.saucedemo.com/    Chrome  
    Sleep    1  
    Close Browser

*** Comments ***