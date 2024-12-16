*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    about:blank    ${BROWSER}    options=${options}
Input Text    name=q   //textarea[@name="q"]    Wait Until Element Is Visible    xpath=//textarea[@name="q"]    timeout=5
Input Text    //textarea[@name="q"]    test
    Wait Until Element Is Visible    xpath=(//span)[14]    timeout=5
    Click Element    xpath=(//span)[14]
    Close Browser
