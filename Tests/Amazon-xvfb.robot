*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Library  DebugLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}    Create Dictionary   credentials_enable_service=${false}                 # Verberg de sla wachtwoord op pop-up

    Call Method  ${chrome_options}  add_experimental_option    prefs    ${prefs}
    Call Method  ${chrome options}  add_argument  --no-sandbox                 # Open de browser in gemaximaliseerd.
    Call Method  ${chrome_options}  add_argument  --headless
    Call Method  ${chrome_options}  add_argument  --disable-gpu    
    Call Method  ${chrome_options}  add_argument  --disable-dev-shm-usage
    Call Method  ${chrome_options}  add_argument  --window-size\=1920,1080
    # debug
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Log to console  007
    
    # Open Browser  http://www.amazon.com  Chrome
    # Go To  http://www.amazon.com
    # Go To  http://www.amazon.com
    Go To  https://pro.104-staging.com.tw/vip
    Log to console  008
    # Open Browser  http://www.amazon.com  googlechrome
    Capture Page Screenshot
    Sleep  1s
    Close Browser

*** Keywords ***

