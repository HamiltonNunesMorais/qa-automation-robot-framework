*** Settings ***
# Resources (Keywords)
Resource    ../../../resources/api/api_session.robot    
Resource    ../../../resources/api/api_users.robot      

# Libraries
Library     Collections

# Variables
Resource    ../../../resources/api/api_variables.robot

*** Test Cases ***
Should delete user successfully
    [Tags]    regression    api    users    delete

    Create API Session

    ${response}=    Delete User    1

    Log To Console    Status: ${response.status_code}
    Log To Console    Response: ${response.text}

    Should Be Equal As Integers    ${response.status_code}    200