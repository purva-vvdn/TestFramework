*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created By ' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    headlesschrome
${SLEEP}    3

*** Test Cases ***
New Tab test
    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser   ${BROWSER}
    Sleep    ${SLEEP}
    Wait Until Keyword Succeeds    1 min    5 seconds    Wait Until Page Contains Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Wait Until Keyword Succeeds    1 min    5 seconds    Click Element    //h3[@class="LC20lb MBeuO DKV0Md"]
    Sleep    ${SLEEP}

    Close Browser