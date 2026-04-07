*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    1366    768
    Set Selenium Speed    0.5s

Close The Browser
    Close Browser

Login With Standard User
    Input Text    id=user-name    standard_user
    Input Text    id=password     secret_sauce
    Click Button  id=login-button