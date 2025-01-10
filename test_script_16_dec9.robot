*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
SmartFitAutomation test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    http://172.24.131.218/testcase    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=//div[@class="custom-table    timeout=5
    Click Element    xpath=//div[@class="custom-table
    Wait Until Element Is Visible    xpath=(//span)[10]    timeout=5
    Click Element    xpath=(//span)[10]
    Wait Until Element Is Visible    xpath=(//span)[14]    timeout=5
    Click Element    xpath=(//span)[14]
    Wait Until Element Is Visible    xpath=(//span)[16]    timeout=5
    Click Element    xpath=(//span)[16]
    Wait Until Element Is Visible    xpath=(//span)[19]    timeout=5
    Click Element    xpath=(//span)[19]
    Wait Until Element Is Visible    xpath=(//span)[19]    timeout=5
    Click Element    xpath=(//span)[19]
    Wait Until Element Is Visible    xpath=(//span)[19]    timeout=5
    Click Element    xpath=(//span)[19]
    Wait Until Element Is Visible    xpath=(//span)[22]    timeout=5
    Click Element    xpath=(//span)[22]
    Wait Until Element Is Visible    xpath=(//span)[7]    timeout=5
    Click Element    xpath=(//span)[7]
    Close Browser
