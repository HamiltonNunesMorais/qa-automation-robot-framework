*** Settings ***
# Resources (Keywords)
Resource    ../../../resources/api/api_session.robot    
Resource    ../../../resources/api/api_users.robot      

# Libraries
Library     Collections
Library     JSONLibrary

# Variables
Resource    ../../../resources/api/api_variables.robot


*** Test Cases ***
Should create user successfully
    [Tags]    regression    api    users    post

    Create API Session

    ${body}=    Load JSON From File    ${DATA_PATH}/create_user.json
    Log To Console    Loading file from: ../../../data/users/create_user.json
    
    Log To Console    Request Body: ${body}
    Log    Request Body: ${body}

    ${response}=    Create User    ${body}

    Log To Console    Status: ${response.status_code}
    Log To Console    Response: ${response.text}

    Log    Status: ${response.status_code}
    Log    Response: ${response.text}

    Should Be Equal As Integers    ${response.status_code}    201

    ${response_body}=    Set Variable    ${response.json()}

    Dictionary Should Contain Key    ${response_body}    name
    Should Be Equal    ${response_body}[name]    ${body}[name]