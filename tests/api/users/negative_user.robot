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
Should return 404 for non existing user
    [Tags]    regression    api    users    negative
    Create API Session

    ${response}=    Get User By Id    9999
    
    Log To Console    Status: ${response.status_code}
    Should Be Equal As Integers    ${response.status_code}    404
