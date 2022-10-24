*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Variables    ../resources/variables.py

*** Test Cases ***
Open Login Page
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Check if login page is opened

Open Products Page
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}

Log out
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Open sidebar
    Click logout button

Change Sorting Method
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Change Sorting Method    ${sort_hilo}

