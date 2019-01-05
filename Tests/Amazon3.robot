*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com  chrome
    Sleep  3s
    input text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    sleep  3s
    Click Link  css=#result_2 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    sleep  3s
    Close Browser


*** Keywords ***

