*** Settings ***
# Resources (Keywords)
Resource    ../../../resources/api/api_session.robot    
Resource    ../../../resources/api/api_users.robot      

# Libraries
Library     Collections
Library    FakerLibrary

# Variables
Resource    ../../../resources/api/api_variables.robot

*** Test Cases ***
Should create user with faker data
    Create API Session

    ${name}=        FakerLibrary.Name
    ${email}=       FakerLibrary.Email
    ${username}=    FakerLibrary.UserName

    ${body}=    Create Dictionary
    ...    name=${name}
    ...    username=${username}
    ...    email=${email}

    Log To Console    Request: ${body}
    Log    Request: ${body}

    ${response}=    Create User    ${body}

    Log To Console    Status: ${response.status_code}
    Log To Console    Response: ${response.text}

    Should Be Equal As Integers    ${response.status_code}    201