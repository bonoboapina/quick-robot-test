*** Settings ***
Library     Selenium2Library
*** Variables ***
${BROWSER}    Chrome
${URL}    https://google.com
${DELAY}      5s

*** Keywords ***

Open Browser To Page
    [Arguments]         ${url}
    Wait Until Keyword Succeeds         1 min               5 sec           Open Browser    ${url}     browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed                  ${DELAY}

Google Homepage Should Be Open
    Title Should Be    Google

*** Test Cases ***

Open Browser Google Page
    Open Browser To Page  ${URL}
    Google Homepage Should Be Open

