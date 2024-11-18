Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com

*** Variables ***
${SLEEP}    3
${BROWSER}    chrome

*** Keywords ***
TestCase

    [Arguments]

    ${chrome_options} =     Evaluate    sys.modules["selenium.webdriver"].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    --no-sandbox
    ${options}=     Call Method     ${chrome_options}    to_capabilities

Open Browser    ${URL}    chrome    desired_capabilities=${options}
    ${warn}=    Run Keyword And Return Status    Page Should Contain Element    //*[@id="details-button"]
    Run Keyword If    ${warn}       Click Element    //*[@id="details-button"]
    Run Keyword If    ${warn}       Click Element    //*[@id="proceed-link"]
Title Should Be    Example Domain

[Teardown]    Close Browser



Verify Example Content

[Setup]    Open Browser to Example

Element Should Be Visible    xpath://h1[contains(text(), 'Example Domain')]

[Teardown]    Close Browser



Verify Example Content1

Log To Console    Example Domain
