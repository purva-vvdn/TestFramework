*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    https://www.merriam-webster.com/dictionary/test    ${BROWSER}    options=${options}
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    Page
    Sleep    ${SLEEP}
    Wait Until Element Is Visible    xpath=//h3[@class="LC20lb    timeout=5
    Click Element    xpath=//h3[@class="LC20lb
    Sleep    ${SLEEP}
    Close Browser