Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com
*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.com    chrome
*** Test Cases ***
Open Browser to Example
  Open Browser To Google
  Title Should Be    Example Domain
  [Teardown]    Close Browser

Verify Example Content
    [Setup]    Open Browser to Example
    Element Should Be Visible    xpath://h1[contains(text(), 'Example Domain')]
    [Teardown]    Close Browser

Verify Example Content1    
    Log To Console    Example Domain