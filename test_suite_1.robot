*** Variables ***
${SLEEP}    3
${BROWSER}    chrome

*** Keywords ***
Open Browser to Example
    [Arguments]    ${URL}
    ${chrome_options} =     Evaluate    sys.modules["selenium.webdriver"].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    --no-sandbox
    ${options}=     Call Method     ${chrome_options}    to_capabilities

Verify Example Content
    [Setup]    Open Browser to Example
    Element Should Be Visible    xpath://h1[contains(text(), 'Example Domain')]
    [Teardown]    Close Browser
