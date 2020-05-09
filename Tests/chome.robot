*** Settings ***
Suite Setup    Open Browser    https://www.katalon.com/    firefox
Suite Teardown    Close Browser
Resource    seleniumLibrary.robot

*** Variables ***
${undefined}    https://www.katalon.com/

*** Test Cases ***
Test Case
    open    https://www.104.com.tw/jobs/main/
    click    link=登入
    click    id=username
    type    id=username    autotest_ac@104.com.tw
    type    id=password    123qwe
    click    id=submitBtn
    click    link=登出
    click    link=登入
    click    id=username
    type    id=username    autotest_ac@104.com.tw
    type    id=password    123qwe
    click    id=submitBtn
    click    id=ikeyword
    type    id=ikeyword    php
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='全部工作、PHP'])[1]/following::div[3]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='職務類別'])[1]/following::button[1]
    click    link=PHP工程師
    selectWindow    win_ser_1
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='登出'])[1]/following::img[1]
    click    link=找公司
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='登出'])[1]/following::img[1]
    click    link=登出
    