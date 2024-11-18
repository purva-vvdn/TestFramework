*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com
${SLEEP}    3
${BROWSER}    chrome

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

Open Browser to Example
Open Browser    ${URL}    chrome
Title Should Be    Example Domain
[Teardown]    Close Browser

Verify Example Content
Verify Example Domain Title
    [Setup]    Open Browser to Example
    Title Should Be    Example Domain
    [Teardown]    Close Browser

Element Should Be Visible    xpath://h1[contains(text(), 'Example Domain')]
[Teardown]    Close Browser

Verify Example Content1
Log To Console    Example Domain