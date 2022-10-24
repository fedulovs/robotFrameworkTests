*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Open Login Page
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser


Open Products Page
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}


