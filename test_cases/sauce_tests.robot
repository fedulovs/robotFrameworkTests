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

Open About
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Open Sidebar
    Click About Option

Open Empty Cart
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Open shopping cart

Add Product To Cart
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Add backpack to cart
    Open shopping cart
    Check that shopping cart contains product    ${sauce_labs_backpack}

Delete Product From Cart
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Add backpack to cart
    Open shopping cart
    Check that shopping cart contains product    ${sauce_labs_backpack}
    Delete product

Checkout
    [Setup]    Open browser and Maximize    ${url}    ${browser}
    [Teardown]    close browser
    Login    ${standard_user}    ${password}
    Add backpack to cart
    Open shopping cart
    Check that shopping cart contains product    ${sauce_labs_backpack}
    Click Checkout Button
    Fill Checkout Info    ${user_first_name}    ${user_last_name}    ${user_postal_code}
    Complete checkout

