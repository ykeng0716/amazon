*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary



*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Capture Page Screenshot
    Sleep  3s
    Close Browser

*** Keywords ***

