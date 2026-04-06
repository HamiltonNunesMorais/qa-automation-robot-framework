*** Settings ***
Resource    ../../../resources/api/api_session.robot
Resource    ../../../resources/api/api_users.robot
Resource    ../../../resources/api/api_validations.robot
Resource    ../../../resources/api/api_utils.robot
Resource    ../../../resources/api/api_variables.robot

Library     Collections

*** Test Cases ***
Should validate contract for all users
    [Tags]    regression    api    users    contract

    Create API Session

    ${response}=    GET On Session    api    /users
    Should Be Equal As Integers    ${response.status_code}    200

    ${users}=    Set Variable    ${response.json()}
    ${total}=    Get List Size    ${users}

    Log To Console    Total users: ${total}
    Log    Total users: ${total}

    FOR    ${user}    IN    @{users}
        Log To Console    Validating user: ${user}[id]
        Log    Validating user: ${user}[id]

        Validate User Contract    ${user}
    END