*** Settings ***
Library     Selenium2Library
*** Variables ***
${BROWSER}    Chrome
${URL}    https://google.com
${DELAY}      0

*** Test Cases ***

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Google Homepage Should Be Open

Google Homepage Should Be Open
    Title Should Be    Google