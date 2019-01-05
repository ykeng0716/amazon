*** Settings ***
Documentation  This is how to break script to Page Object exercise
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

Search for Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input

Select Product from Search Results
    Click Link  css=#result_2 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a

Add Product to Cart
    #Click Button  id=add-to-cart-button
    Click Button  css=#add-to-wishlist-button-submit

Begin Checkout
    Wait Until Page Contains  Email (phone for mobile accounts)

End Web Test
    Close Browser