*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Teardown
    close browser
    log    Finished test

Open Browser and Maximize
    [Arguments]    ${URL}    ${Browser}
    log    Started test
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

Check If Login Page Is Opened
    page should contain element    class:login_logo
    page should contain element    class:form_group

Open Sidebar
    click button    id:react-burger-menu-btn
    wait until element is visible    id:logout_sidebar_link

Click Logout Button
    click link    id:logout_sidebar_link
    page should contain element    class:login_logo
    page should contain element    class:form_group

Change Sorting Method
    [Arguments]    ${sorting-method}
    select from list by value    //*[@id="header_container"]/div[2]/div[2]/span/select    ${sorting-method}
    element text should be    //*[@id="item_5_title_link"]/div    Sauce Labs Fleece Jacket
