*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***
Generate Random User Id
    ${id}=    Evaluate    random.randint(1, 10)    random
    RETURN    ${id}

Get List Size
    [Arguments]    ${list}
    ${size}=    Evaluate    len($list)
    RETURN    ${size}