*** Settings ***
# Resources (Keywords)
Resource    ../../../resources/api/api_session.robot    
Resource    ../../../resources/api/api_users.robot      

# Libraries
Library     Collections

# Variables
Resource    ../../../resources/api/api_variables.robot

*** Test Cases ***
Should update user successfully
    [Tags]    regression    api    users    put

    Create API Session

    ${body}=    Create Dictionary
    ...    name=Updated User
    ...    username=updateduser
    ...    email=updated@email.com

    ${response}=    Update User    1    ${body}

    Log To Console    Status: ${response.status_code}
    Log To Console    Response: ${response.text}

    Should Be Equal As Integers    ${response.status_code}    200

    ${response_body}=    Set Variable    ${response.json()}

    Should Be Equal    ${response_body}[name]    Updated User