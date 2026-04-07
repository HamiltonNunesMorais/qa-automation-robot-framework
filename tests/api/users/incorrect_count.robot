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
Should fail when user count is incorrect
    Create API Session

    ${response}=    GET On Session    api    /users
    Should Be Equal As Integers    ${response.status_code}    200

    ${users}=    Set Variable    ${response.json()}
    ${total}=    Get List Size    ${users}

    Log To Console    Total users: ${total}
    Log    Total users: ${total}

    ${error}=    Run Keyword And Expect Error    
    ...    *!= 9*    
    ...    Should Be Equal As Integers    ${total}    9

    Log To Console    Captured error: ${error}
    Log    Captured error: ${error}