*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***
Get User By Id
    [Arguments]    ${id}
    ${response}=    GET On Session    api    /users/${id}    expected_status=any
    RETURN    ${response}

Create User
    [Arguments]    ${body}
    ${response}=    POST On Session    api    /users    json=${body}    expected_status=any
    RETURN    ${response}

Update User
    [Arguments]    ${id}    ${body}
    ${response}=    PUT On Session    api    /users/${id}    json=${body}    expected_status=any
    RETURN    ${response}

Delete User
    [Arguments]    ${id}
    ${response}=    DELETE On Session    api    /users/${id}    expected_status=any
    RETURN    ${response}