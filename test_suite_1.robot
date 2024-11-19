*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created By ' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${SLEEP}     3
${BROWSER}   chrome

*** Keywords ***
Open Browser to Example
    [Arguments]    ${headless}=True
    ${chrome_options}=    Evaluate    sys.modules["selenium.webdriver"].ChromeOptions()    sys, selenium.webdriver
    Run Keyword If    ${headless}    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    ${options}=    Call Method    ${chrome_options}    to_capabilities
    Open Browser    ${URL}    ${BROWSER}    desired_capabilities=${options}
    ${warn}=    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="details-button"]
    Run Keyword If    ${warn}    Click Element    xpath=//*[@id="details-button"]
    Run Keyword If    ${warn}    Click Element    xpath=//*[@id="proceed-link"]

*** Test Cases ***
New Tab Test
    [Documentation]    Test case to open a new tab and click an element
    Open Browser to Example    chrome://newtab/
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Sleep    ${SLEEP}
    Close Browser
