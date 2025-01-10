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
    Wait Until Element Is Visible    xpath=//mat-toolbar[@class="mat-toolbar    timeout=5
    Click Element    xpath=//mat-toolbar[@class="mat-toolbar
    Wait Until Element Is Visible    xpath=//mat-icon[@class="mat-icon    timeout=5
    Click Element    xpath=//mat-icon[@class="mat-icon
    Wait Until Element Is Visible    xpath=(//span)[42]    timeout=5
    Click Element    xpath=(//span)[42]
    Wait Until Element Is Visible    xpath=//button[@class="btn-primary"]    timeout=5
    Click Element    xpath=//button[@class="btn-primary"]
Input Text    name=q   //input[@id="username"]    Wait Until Element Is Visible    xpath=//input[@id="username"]    timeout=5
Input Text    //input[@id="username"]    test
Input Text    name=q   //input[@id="password"]    Wait Until Element Is Visible    xpath=//input[@id="password"]    timeout=5
Input Text    //input[@id="password"]    ***
    Close Browser
