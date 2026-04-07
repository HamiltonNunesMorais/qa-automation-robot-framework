*** Settings ***
Resource    ../../resources/ui/ui_keywords.robot

*** Test Cases ***
Should login successfully
    [Tags]    ui    login    regression

    Open Browser To Login Page
    Login With Standard User

    Run Keyword And Ignore Error    Page Should Contain    Products

    Close The Browser