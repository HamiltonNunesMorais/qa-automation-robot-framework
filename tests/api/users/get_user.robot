*** Settings ***
# Resources (Keywords)
Resource    ../../../resources/api/api_session.robot    
Resource    ../../../resources/api/api_users.robot      
Resource    ../../../resources/api/api_validations.robot    
Resource    ../../../resources/api/api_utils.robot  

# Libraries
Library     Collections

# Variables
Resource    ../../../resources/api/api_variables.robot

*** Test Cases ***
Should get user by id successfully
    [Tags]    smoke    api    users
    Create API Session
    ${user_id}=    Generate Random User Id
    ${response}=    Get User By Id    ${user_id}

    ${user}=    Set Variable    ${response.json()}

    Log To Console    Testing user id: ${user_id}
    Log To Console    User Name: ${user}[name]

    Should Be Equal As Integers    ${response.status_code}    200
    Dictionary Should Contain Key    ${user}    id
    Dictionary Should Contain Key    ${user}    name


