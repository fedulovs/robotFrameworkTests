*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open browser and Maximize
    [Arguments]    ${URL}    ${Browser}
    open browser    ${URL}    ${Browser}
    maximize browser window

Login
    [Arguments]    ${Username}    ${Password}
    input text    id:user-name    ${Username}
    input text    xpath://*[@id="password"]    ${Password}
    click button    name:login-button
    page should contain element    class:app_logo
    page should contain element    class:footer_copy
    location should be    https://www.saucedemo.com/inventory.html
