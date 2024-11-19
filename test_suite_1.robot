*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by 'Robotcorder'
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}        chrome
${SLEEP}          3
${URL}            chrome://newtab/
${ELEMENT_XPATH}  //h3[@class="LC20lb MBeuO DKV0Md"]

*** Test Cases ***
New Tab Test
    Open Browser    ${URL}    ${BROWSER}
    Sleep           ${SLEEP}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    timeout=1 min
    Click Element   ${ELEMENT_XPATH}
    Sleep           ${SLEEP}
    Close Browser
