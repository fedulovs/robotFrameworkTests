*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://www.saucedemo.com
${Browser}    Chrome

#Users
${StandardUser}    standard_user
${LockedOutUser}    standard_user

${Password}    secret_sauce

*** Test Cases ***
Open Products Page
    [Setup]    Open browser and Maximize    ${URL}    ${Browser}
    [Teardown]    close browser
    Login    ${StandardUser}    ${Password}


