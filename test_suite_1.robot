*** Variables ***
${SLEEP}    3
${BROWSER}    chrome
*** Keywords ***
default_name

    [Arguments]
    ${SLEEP}
    ${BROWSER}

    Title Should Be    Example Domain
    [Teardown]    Close Browser

Verify Example Content
    [Setup]    Open Browser to Example
    Element Should Be Visible    xpath://h1[contains(text(), 'Example Domain')]
    [Teardown]    Close Browser

Verify Example Content1    
    Log To Console    Example Domain