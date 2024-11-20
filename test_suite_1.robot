*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created By ' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    headlesschrome
${SLEEP}    3

*** Test Cases ***
New Tab test  
    Wait Until Keyword Succeeds    1 min    5 seconds    Open Browser    Google     ${BROWSER}
    Sleep    ${SLEEP}