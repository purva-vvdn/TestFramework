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
    Open Browser    http://qa-sfit.vvdncloud.com/code-editor    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=//mat-toolbar[@class="mat-toolbar    timeout=5
    Click Element    xpath=//mat-toolbar[@class="mat-toolbar
    Wait Until Element Is Visible    xpath=(//span)[13]    timeout=5
    Click Element    xpath=(//span)[13]
    Wait Until Element Is Visible    xpath=(//span)[16]    timeout=5
    Click Element    xpath=(//span)[16]
    Wait Until Element Is Visible    xpath=(//span)[7]    timeout=5
    Click Element    xpath=(//span)[7]
    Wait Until Element Is Visible    xpath=(//span)[10]    timeout=5
    Click Element    xpath=(//span)[10]
    Wait Until Element Is Visible    xpath=(//span[@class="mat-mdc-button-touch-target"])[7]    timeout=5
    Click Element    xpath=(//span[@class="mat-mdc-button-touch-target"])[7]
    Wait Until Element Is Visible    xpath=(//mat-icon[@class="mat-icon    timeout=5
    Click Element    xpath=(//mat-icon[@class="mat-icon
    Wait Until Element Is Visible    xpath=(//span[@class="mat-mdc-button-touch-target"])[2]    timeout=5
    Click Element    xpath=(//span[@class="mat-mdc-button-touch-target"])[2]
    Wait Until Element Is Visible    xpath=(//span)[35]    timeout=5
    Click Element    xpath=(//span)[35]
    Wait Until Element Is Visible    xpath=//button[@class="ng-star-inserted"]    timeout=5
    Click Element    xpath=//button[@class="ng-star-inserted"]
    Close Browser
