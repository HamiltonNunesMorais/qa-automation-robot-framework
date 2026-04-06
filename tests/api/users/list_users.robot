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
Should list users successfully
    [Tags]    regression    api    users
    Create API Session

    ${response}=    GET On Session    api    /users
    Should Be Equal As Integers    ${response.status_code}    200

    ${users}=    Set Variable    ${response.json()}
    ${total}=    Get List Size    ${users}
    
    Should Be True    ${total} > 0
    Log To Console    Total users: ${total}