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
Should validate user contract
    [Tags]    regression    api    users    contract
    Create API Session

    ${user_id}=    Generate Random User Id
    ${response}=    Get User By Id    ${user_id}

    ${user}=    Set Variable    ${response.json()}

    Log To Console    Validating contract for user: ${user_id}
    Log To Console    User name: ${user}[name]

    Should Be Equal As Integers    ${response.status_code}    200

    Validate User Contract    ${user}