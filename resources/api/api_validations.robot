*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***
Validate User Contract
    [Arguments]    ${user}

    # Mandatory fields
    Dictionary Should Contain Key    ${user}    id
    Dictionary Should Contain Key    ${user}    name
    Dictionary Should Contain Key    ${user}    email
    Dictionary Should Contain Key    ${user}    address

    # basic types
    Should Be True    isinstance($user["id"], int)
    Should Be True    isinstance($user["name"], str)
    Should Be True    isinstance($user["email"], str)

    # Nested fields
    ${address}=    Set Variable    ${user}[address]
    Dictionary Should Contain Key    ${address}    city
